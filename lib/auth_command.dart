import "package:args/command_runner.dart";
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

import 'environment.dart';

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
    UuidUtil.cryptoRNG();
    final state = Uuid(options: {'grng': UuidUtil.cryptoRNG}).v4();

    final authUrl = "https://id.twitch.tv/oauth2/authorize"
        "?client_id=$clientId"
        "&redirect_uri=$redirectUri"
        "&response_type=code"
        "&scope=user:read:broadcast"
        "&state=$state";
    print('Click this link to authenticate $authUrl');
    // print("Trying to authenticate with client-id $clientId");
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
