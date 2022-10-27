import 'package:args/command_runner.dart';

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
    //
  }

  @override
  String get name => "twitch";

  @override
  String get description => "Autheticate with Twitch";

  @override
  Future<void> run() async {
    //
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
