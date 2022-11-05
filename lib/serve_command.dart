import 'dart:convert';

import 'package:args/command_runner.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:http/http.dart' as http;

import 'database.dart';
import 'environment.dart';
import 'utils.dart';

class ServeCommand extends Command {
  ServeCommand() {
    argParser
      ..addOption(
        'host',
        abbr: 'a',
        help: 'The host to listen on',
        defaultsTo: "localhost",
      )
      ..addOption(
        'port',
        abbr: 'p',
        help: 'The port to listen on',
        defaultsTo: '8000',
      );
  }

  @override
  final name = "serve";

  @override
  final description = "Run the server";

  int get port => int.parse(argResults?['port']);

  String get host => argResults?['host'];

  @override
  Future<void> run() async {
    final app = Router();

    app.get('/', (_) {
      return Response.ok('OK');
    });

    app.get('/health', (_) {
      return Response.ok('OK');
    });

    app.get('/auth/twitch', (Request req) async {
      final queryParams = req.requestedUri.queryParameters;
      final code = queryParams['code'] ?? '';
      final scope = queryParams['scope'] ?? '';
      final state = queryParams['state'] ?? '';
      final error = queryParams['error'] ?? '';
      final errorDescription = queryParams['error_description'] ?? '';

      cliAssert((code.isNotEmpty && scope.isNotEmpty) ||
          (error.isNotEmpty && errorDescription.isNotEmpty));
      cliAssert(state.isNotEmpty); // TODO: cache state for verification

      final isError = error.isNotEmpty;
      if (isError) return Response.internalServerError();

      final clientId = Environment.twitchClientId ?? '';
      final clientSecret = Environment.twitchClientSecret ?? '';
      final redirectUri = Environment.twitchRedirectUri ?? '';
      cliAssert(clientId.isNotEmpty, 'clientId is empty');
      cliAssert(clientSecret.isNotEmpty, 'clientSecret is empty');
      cliAssert(redirectUri.isNotEmpty, 'redirectUri is empty');

      print('Client secret ${clientSecret.substring(5)}x');

      final authTokenResponse = await http.post(Uri.parse(
        'https://id.twitch.tv/oauth2/token'
        '?client_id=$clientId'
        '&client_secret=$clientSecret'
        '&code=$code'
        '&grant_type=authorization_code'
        '&redirect_uri=$redirectUri',
      ));
      final accessTokenJson = jsonDecode(authTokenResponse.body);
      final accessToken = accessTokenJson['access_token'] as String?;
      cliAssert(accessToken != null && accessToken.isNotEmpty,
          "Did not receive an accessToken");

      accessTokenJson['expires_on'] = DateTime.now()
          .add(Duration(seconds: accessTokenJson['expires_in']))
          .subtract(Duration(minutes: 1))
          .toUtc()
          .toIso8601String();

      final userInfoResponse = await http.get(
        Uri.parse("https://api.twitch.tv/helix/users"),
        headers: {
          'Authorization': 'Bearer $accessToken',
          'Client-Id': clientId,
        },
      );

      final userInfoJson = jsonDecode(userInfoResponse.body)['data'].single;

      cliAssert(userInfoJson != null && userInfoJson.isNotEmpty,
          "Did not receive userInfo json");

      final userId = userInfoJson['id'] as String;
      final displayName = userInfoJson['display_name'] as String;

      db.setState((db) {
        db.twitchAccessTokens[userId] = accessTokenJson;
        db.twitchUserInfo[userId] = userInfoJson;
      });

      print(
        'Authenticating userId $userId, '
        'displayName $displayName, '
        'for scope $scope, '
        'with code $code, '
        'and state $state',
      );

      return Response.ok('OK');
    });

    app.get('/twitch/live-webhook', (req) {
      // verify the authenticity
      // set Twitter display name
      // set Twitter profile picture
      return Response.ok('OK');
    });

    print('Starting server on $host:$port');
    await io.serve(app, host, port);
  }
}
