import 'package:dotenv/dotenv.dart';

final _env = DotEnv(includePlatformEnvironment: true)..load();

class Environment {
  static final twitchClientId = _env['TWITCH_CLIENT_ID'];
  static final twitchClientSecret = _env['TWITCH_CLIENT_SECRET'];
  static final twitchRedirectUri = _env['TWITCH_REDIRECT_URI'];
}
