// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:shelf/shelf.dart' as shelf;
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

import 'database.dart';
import 'environment.dart';
import 'extensions.dart';
import 'utils.dart';

part 'twitch_client.freezed.dart';
part 'twitch_client.g.dart';

Uri getAuthUri(String clientId, Uri redirectUri) {
  final state = Uuid(options: {'grng': UuidUtil.cryptoRNG}).v4();

  return Uri.parse(
    "https://id.twitch.tv/oauth2/authorize"
    "?client_id=$clientId"
    "&redirect_uri=$redirectUri"
    "&response_type=code"
    "&scope=user:read:email"
    "&state=$state",
  );
}

@freezed
class TwitchAuthQueryParams with _$TwitchAuthQueryParams {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TwitchAuthQueryParams(
    String? code,
    String? scope,
    String? state,
    String? error,
    String? errorDescription,
  ) = _TwitchAuthQueryParams;

  factory TwitchAuthQueryParams.fromJson(Map<String, dynamic> json) =>
      _$TwitchAuthQueryParamsFromJson(json);
}

TwitchAuthQueryParams parseAuthRequest(shelf.Request request) {
  final queryParams = request.requestedUri.queryParameters;
  final d = TwitchAuthQueryParams.fromJson(queryParams);

  cliAssert((d.code.isNotNullOrEmpty && d.scope.isNotNullOrEmpty) ||
      (d.error.isNotNullOrEmpty && d.errorDescription.isNotNullOrEmpty));
  cliAssert(d.state.isNotNullOrEmpty); // TODO: cache state for verification
  return d;
}

Future<TwitchFinalizedAuth> postFinalizedAuth(String code) async {
  final clientId = Environment.twitchClientId;
  final clientSecret = Environment.twitchClientSecret;
  final redirectUri = Environment.twitchRedirectUri;
  cliAssert(clientId.isNotNullOrEmpty, 'clientId is empty');
  cliAssert(clientSecret.isNotNullOrEmpty, 'clientSecret is empty');
  cliAssert(redirectUri.isNotNullOrEmpty, 'redirectUri is empty');

  final authTokenResponse = await http.post(Uri.parse(
    'https://id.twitch.tv/oauth2/token'
    '?client_id=$clientId'
    '&client_secret=$clientSecret'
    '&code=$code'
    '&grant_type=authorization_code'
    '&redirect_uri=$redirectUri',
  ));
  final json = jsonDecode(authTokenResponse.body);
  final accessToken = TwitchAccessToken.fromJson(json);
  cliAssert(accessToken.accessToken.isNotNullOrEmpty, "accessToken is empty");

  final userInfo = await getUserFromToken(accessToken.accessToken);

  db.update((b) => b
    ..twitchAccessToken[userInfo.id] = accessToken
    ..twitchUserInfo[userInfo.id] = userInfo);

  return TwitchFinalizedAuth(accessToken, userInfo);
}

class TwitchFinalizedAuth {
  TwitchFinalizedAuth(this.accessToken, this.userInfo);

  final TwitchAccessToken accessToken;
  final TwitchUserInfo userInfo;
}

@freezed
class TwitchAccessToken with _$TwitchAccessToken {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TwitchAccessToken(
    String accessToken,
    Duration expiresIn,
    String refreshToken,
    List<String> scope,
    String tokenType,
  ) = _TwitchAccessToken;

  factory TwitchAccessToken.fromJson(Map<String, dynamic> json) =>
      _$TwitchAccessTokenFromJson(json);
}

Future<TwitchUserInfo> getUserFromToken(String accessToken) async {
  final response = await http.get(
    Uri.parse("https://api.twitch.tv/helix/users"),
    headers: {
      'Authorization': 'Bearer $accessToken',
      'Client-Id': Environment.twitchClientId!,
    },
  );

  final json = jsonDecode(response.body)['data'].single;
  final userInfo = TwitchUserInfo.fromJson(json);

  db.update((b) => b..twitchUserInfo[userInfo.id] = userInfo);

  return userInfo;
}

@freezed
class TwitchUserInfo with _$TwitchUserInfo {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TwitchUserInfo(
    String id,
    String login,
    String displayName,
    String type,
    String broadcasterType,
    String description,
    Uri profileImageUrl,
    Uri offlineImageUrl,
    int viewCount,
    String email,
    DateTime createdAt,
  ) = _TwitchUserInfo;

  factory TwitchUserInfo.fromJson(Map<String, Object?> json) =>
      _$TwitchUserInfoFromJson(json);
}
