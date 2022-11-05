import 'package:args/command_runner.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

import 'extensions.dart';
import 'twitch_client.dart';

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
      final d = parseAuthRequest(req);
      final isError = d.error.isNotNullOrEmpty;
      if (isError) return Response.internalServerError();

      final finalizedAuth = await postFinalizedAuth(d.code!);
      final userId = finalizedAuth.userInfo.id;
      final displayName = finalizedAuth.userInfo.displayName;

      print(
        'Authenticating userId $userId, '
        'displayName $displayName, '
        'for scope ${d.scope}, '
        'with code ${d.code}, '
        'and state ${d.state}',
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
