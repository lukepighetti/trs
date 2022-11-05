import 'package:args/command_runner.dart';

import 'auth_command.dart';
import 'serve_command.dart';

Future<void> main(List<String> arguments) async {
  CommandRunner(
    "tls",
    "A server that updates a Twitter profile when live on Twitch",
  )
    ..addCommand(ServeCommand())
    ..addCommand(AuthCommand())
    ..run(arguments);
}

// Setup webhook listener
//
// Register Twitch live status webhook
// https://dev.twitch.tv/docs/eventsub/manage-subscriptions
//
// Setup Twitch live status poller
// https://dev.twitch.tv/docs/api/reference#get-streams
//
// On live:
//  - Set Twitter name to {{ "LIVE NOW 🔴 – " + display_name }}
//  - Set Twitter profile photo to {{ profile_photo.png + live_overlay.png }}
//
// On end stream:
//  - Set Twitter name to {{ display_name }}
//  - Set Twitter profile photo to {{ profile_photo.png }}
