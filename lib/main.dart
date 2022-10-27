import 'cli_args.dart';

void main(List<String> arguments) {
  final args = CliArgs(arguments)..parse();
  final port = args.port;

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