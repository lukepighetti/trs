// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DatabaseModel _$$_DatabaseModelFromJson(Map<String, dynamic> json) =>
    _$_DatabaseModel(
      (json['twitch_access_token'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, TwitchAccessToken.fromJson(e as Map<String, dynamic>)),
          ) ??
          {},
      (json['twitch_user_info'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, TwitchUserInfo.fromJson(e as Map<String, dynamic>)),
          ) ??
          {},
    );

Map<String, dynamic> _$$_DatabaseModelToJson(_$_DatabaseModel instance) =>
    <String, dynamic>{
      'twitch_access_token': instance.twitchAccessToken,
      'twitch_user_info': instance.twitchUserInfo,
    };
