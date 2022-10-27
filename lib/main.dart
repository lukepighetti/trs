import 'package:args/args.dart';

void main(List<String> arguments) {
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

  final args = parser.parse(arguments);
  final needsHelp = args['help'];
  final port = int.tryParse(args['port']);

  if (needsHelp) {
    print(parser.usage);
    return;
  }

  print('Starting server on port $port');
}

// Setup webhook listener
// Register Twitch live status webhook
// Setup Twitch live status poller
//
// On live:
//  - Set Twitter name to {{ "LIVE NOW 🔴 – " + display_name }}
//  - Set Twitter profile photo to {{ profile_photo.png + live_overlay.png }}
//
// On end stream:
//  - Set Twitter name to {{ display_name }}
//  - Set Twitter profile photo to {{ profile_photo.png }}