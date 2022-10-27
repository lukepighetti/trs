import 'package:args/command_runner.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

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

    app.get('/health', (_) {
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
