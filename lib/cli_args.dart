import 'dart:io';

import 'package:args/args.dart';

class CliArgs {
  CliArgs(this.arguments);

  final List<String> arguments;

  final parser = ArgParser()
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Display this help message',
    )
    ..addOption(
      'port',
      abbr: 'p',
      help: 'The port to listen on',
      defaultsTo: '8080',
    );

  late final _args = parser.parse(arguments);
  late final needsHelp = _args['help'];
  late final port = int.tryParse(_args['port']);

  /// Parse the args and dispatch any needed commands
  void parse() {
    if (needsHelp) {
      print(parser.usage);
      exit(0);
    }
  }
}
