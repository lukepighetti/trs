// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DatabaseModel _$DatabaseModelFromJson(Map<String, dynamic> json) {
  return _DatabaseModel.fromJson(json);
}

/// @nodoc
mixin _$DatabaseModel {
  @JsonKey(defaultValue: {})
  Map<String, TwitchAccessToken> get twitchAccessToken =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  set twitchAccessToken(Map<String, TwitchAccessToken> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  Map<String, TwitchUserInfo> get twitchUserInfo =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: {})
  set twitchUserInfo(Map<String, TwitchUserInfo> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatabaseModelCopyWith<DatabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseModelCopyWith<$Res> {
  factory $DatabaseModelCopyWith(
          DatabaseModel value, $Res Function(DatabaseModel) then) =
      _$DatabaseModelCopyWithImpl<$Res, DatabaseModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: {})
          Map<String, TwitchAccessToken> twitchAccessToken,
      @JsonKey(defaultValue: {})
          Map<String, TwitchUserInfo> twitchUserInfo});
}

/// @nodoc
class _$DatabaseModelCopyWithImpl<$Res, $Val extends DatabaseModel>
    implements $DatabaseModelCopyWith<$Res> {
  _$DatabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? twitchAccessToken = null,
    Object? twitchUserInfo = null,
  }) {
    return _then(_value.copyWith(
      twitchAccessToken: null == twitchAccessToken
          ? _value.twitchAccessToken
          : twitchAccessToken // ignore: cast_nullable_to_non_nullable
              as Map<String, TwitchAccessToken>,
      twitchUserInfo: null == twitchUserInfo
          ? _value.twitchUserInfo
          : twitchUserInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, TwitchUserInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatabaseModelCopyWith<$Res>
    implements $DatabaseModelCopyWith<$Res> {
  factory _$$_DatabaseModelCopyWith(
          _$_DatabaseModel value, $Res Function(_$_DatabaseModel) then) =
      __$$_DatabaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: {})
          Map<String, TwitchAccessToken> twitchAccessToken,
      @JsonKey(defaultValue: {})
          Map<String, TwitchUserInfo> twitchUserInfo});
}

/// @nodoc
class __$$_DatabaseModelCopyWithImpl<$Res>
    extends _$DatabaseModelCopyWithImpl<$Res, _$_DatabaseModel>
    implements _$$_DatabaseModelCopyWith<$Res> {
  __$$_DatabaseModelCopyWithImpl(
      _$_DatabaseModel _value, $Res Function(_$_DatabaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? twitchAccessToken = null,
    Object? twitchUserInfo = null,
  }) {
    return _then(_$_DatabaseModel(
      null == twitchAccessToken
          ? _value.twitchAccessToken
          : twitchAccessToken // ignore: cast_nullable_to_non_nullable
              as Map<String, TwitchAccessToken>,
      null == twitchUserInfo
          ? _value.twitchUserInfo
          : twitchUserInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, TwitchUserInfo>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DatabaseModel implements _DatabaseModel {
  _$_DatabaseModel(@JsonKey(defaultValue: {}) this.twitchAccessToken,
      @JsonKey(defaultValue: {}) this.twitchUserInfo);

  factory _$_DatabaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_DatabaseModelFromJson(json);

  @override
  @JsonKey(defaultValue: {})
  Map<String, TwitchAccessToken> twitchAccessToken;
  @override
  @JsonKey(defaultValue: {})
  Map<String, TwitchUserInfo> twitchUserInfo;

  @override
  String toString() {
    return 'DatabaseModel(twitchAccessToken: $twitchAccessToken, twitchUserInfo: $twitchUserInfo)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatabaseModelCopyWith<_$_DatabaseModel> get copyWith =>
      __$$_DatabaseModelCopyWithImpl<_$_DatabaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatabaseModelToJson(
      this,
    );
  }
}

abstract class _DatabaseModel implements DatabaseModel {
  factory _DatabaseModel(
      @JsonKey(defaultValue: {})
          Map<String, TwitchAccessToken> twitchAccessToken,
      @JsonKey(defaultValue: {})
          Map<String, TwitchUserInfo> twitchUserInfo) = _$_DatabaseModel;

  factory _DatabaseModel.fromJson(Map<String, dynamic> json) =
      _$_DatabaseModel.fromJson;

  @override
  @JsonKey(defaultValue: {})
  Map<String, TwitchAccessToken> get twitchAccessToken;
  @JsonKey(defaultValue: {})
  set twitchAccessToken(Map<String, TwitchAccessToken> value);
  @override
  @JsonKey(defaultValue: {})
  Map<String, TwitchUserInfo> get twitchUserInfo;
  @JsonKey(defaultValue: {})
  set twitchUserInfo(Map<String, TwitchUserInfo> value);
  @override
  @JsonKey(ignore: true)
  _$$_DatabaseModelCopyWith<_$_DatabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
