import 'dart:convert';

import 'package:args/command_runner.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';
import 'package:http/http.dart' as http;

import 'database.dart';
import 'environment.dart';

class ServeCommand extends Command {
  ServeCommand() {
    argParser
      ..addOption(
        'host',
        abbr: 'a',
        help: 'The host to listen on',
        defaultsTo: "127.0.0.1",
      )
      ..addOption(
        'port',
        abbr: 'p',
        help: 'The port to listen on',
        defaultsTo: '8080',
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

      assert((code.isNotEmpty && scope.isNotEmpty) ||
          (error.isNotEmpty && errorDescription.isNotEmpty));
      assert(state.isNotEmpty); // TODO: cache state for verification

      final isError = error.isNotEmpty;
      if (isError) return Response.internalServerError();

      final clientId = Environment.twitchClientId;
      final clientSecret = Environment.twitchClientSecret;
      final redirectUri = Environment.twitchRedirectUri;

      final res = await http.post(Uri.parse(
        'https://id.twitch.tv/oauth2/token'
        '?client_id=$clientId'
        '&client_secret=$clientSecret'
        '&code=$code'
        '&grant_type=authorization_code'
        '&redirect_uri=$redirectUri',
      ));

      final json = jsonDecode(res.body);
      final accessToken = json['access_token'];
      db.twitchAccessTokens[accessToken] = json;
      db.save();

      print('Authenticating code $code for scope $scope and state $state');

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
