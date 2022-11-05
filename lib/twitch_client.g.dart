// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twitch_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TwitchAuthQueryParams _$TwitchAuthQueryParamsFromJson(
        Map<String, dynamic> json) =>
    TwitchAuthQueryParams(
      json['code'] as String?,
      json['scope'] as String?,
      json['state'] as String?,
      json['error'] as String?,
      json['error_description'] as String?,
    );

Map<String, dynamic> _$TwitchAuthQueryParamsToJson(
        TwitchAuthQueryParams instance) =>
    <String, dynamic>{
      'code': instance.code,
      'scope': instance.scope,
      'state': instance.state,
      'error': instance.error,
      'error_description': instance.errorDescription,
    };

TwitchAccessToken _$TwitchAccessTokenFromJson(Map<String, dynamic> json) =>
    TwitchAccessToken(
      json['access_token'] as String,
      Duration(microseconds: json['expires_in'] as int),
      json['refresh_token'] as String,
      (json['scope'] as List<dynamic>).map((e) => e as String).toList(),
      json['token_type'] as String,
    );

Map<String, dynamic> _$TwitchAccessTokenToJson(TwitchAccessToken instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_in': instance.expiresIn.inMicroseconds,
      'refresh_token': instance.refreshToken,
      'scope': instance.scope,
      'token_type': instance.tokenType,
    };

_$_TwitchUserInfo _$$_TwitchUserInfoFromJson(Map<String, dynamic> json) =>
    _$_TwitchUserInfo(
      json['id'] as String,
      json['login'] as String,
      json['display_name'] as String,
      json['type'] as String,
      json['broadcaster_type'] as String,
      json['description'] as String,
      Uri.parse(json['profile_image_url'] as String),
      Uri.parse(json['offline_image_url'] as String),
      json['view_count'] as int,
      json['email'] as String,
      DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_TwitchUserInfoToJson(_$_TwitchUserInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'display_name': instance.displayName,
      'type': instance.type,
      'broadcaster_type': instance.broadcasterType,
      'description': instance.description,
      'profile_image_url': instance.profileImageUrl.toString(),
      'offline_image_url': instance.offlineImageUrl.toString(),
      'view_count': instance.viewCount,
      'email': instance.email,
      'created_at': instance.createdAt.toIso8601String(),
    };
