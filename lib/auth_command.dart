import 'package:args/command_runner.dart';

import 'environment.dart';
import 'twitch_client.dart';

class AuthCommand extends Command {
  AuthCommand() {
    addSubcommand(_TwitchAuthCommand());
    addSubcommand(_TwitterAuthCommand());
  }

  @override
  String get name => "auth";

  @override
  String get description => "Authenticate with Twitch or Twitter";
}

class _TwitchAuthCommand extends Command {
  _TwitchAuthCommand() {
    argParser
      ..addOption(
        "client-id",
        abbr: "i",
        help: "Your Twitch ClientID from https://dev.twitch.tv, "
            "fallsback to environment variable TWITCH_CLIENT_ID",
      )
      ..addOption(
        "redirect-uri",
        abbr: "r",
        help: "The redirect URI to use for auth"
            "falls back to environment variable TWITCH_REDIRECT_URI",
      );
  }

  late final clientId = argResults?["client-id"] ?? Environment.twitchClientId;
  late final redirectUri =
      Uri.parse(argResults?["redirect-uri"] ?? Environment.twitchRedirectUri);

  @override
  String get name => "twitch";

  @override
  String get description => "Autheticate with Twitch";

  @override
  Future<void> run() async {
    final authUrl = getAuthUri(clientId, redirectUri);
    print('Click this link to authenticate $authUrl');
  }
}

class _TwitterAuthCommand extends Command {
  _TwitterAuthCommand() {
    //
  }

  @override
  String get name => "twitter";

  @override
  String get description => "Autheticate with Twitter";

  @override
  Future<void> run() async {
    //
  }
}
