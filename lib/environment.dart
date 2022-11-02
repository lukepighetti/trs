import 'dart:io';

class Environment {
  static final twitchClientId = Platform.environment['TWITCH_CLIENT_ID'];
  static final twitchClientSecret =
      Platform.environment['TWITCH_CLIENT_SECRET'];
  static final twitchRedirectUri = Platform.environment['TWITCH_REDIRECT_URI'];
}
