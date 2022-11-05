// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twitch_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TwitchAuthQueryParams _$TwitchAuthQueryParamsFromJson(
    Map<String, dynamic> json) {
  return _TwitchAuthQueryParams.fromJson(json);
}

/// @nodoc
mixin _$TwitchAuthQueryParams {
  String? get code => throw _privateConstructorUsedError;
  String? get scope => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get errorDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchAuthQueryParamsCopyWith<TwitchAuthQueryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchAuthQueryParamsCopyWith<$Res> {
  factory $TwitchAuthQueryParamsCopyWith(TwitchAuthQueryParams value,
          $Res Function(TwitchAuthQueryParams) then) =
      _$TwitchAuthQueryParamsCopyWithImpl<$Res, TwitchAuthQueryParams>;
  @useResult
  $Res call(
      {String? code,
      String? scope,
      String? state,
      String? error,
      String? errorDescription});
}

/// @nodoc
class _$TwitchAuthQueryParamsCopyWithImpl<$Res,
        $Val extends TwitchAuthQueryParams>
    implements $TwitchAuthQueryParamsCopyWith<$Res> {
  _$TwitchAuthQueryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? scope = freezed,
    Object? state = freezed,
    Object? error = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TwitchAuthQueryParamsCopyWith<$Res>
    implements $TwitchAuthQueryParamsCopyWith<$Res> {
  factory _$$_TwitchAuthQueryParamsCopyWith(_$_TwitchAuthQueryParams value,
          $Res Function(_$_TwitchAuthQueryParams) then) =
      __$$_TwitchAuthQueryParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      String? scope,
      String? state,
      String? error,
      String? errorDescription});
}

/// @nodoc
class __$$_TwitchAuthQueryParamsCopyWithImpl<$Res>
    extends _$TwitchAuthQueryParamsCopyWithImpl<$Res, _$_TwitchAuthQueryParams>
    implements _$$_TwitchAuthQueryParamsCopyWith<$Res> {
  __$$_TwitchAuthQueryParamsCopyWithImpl(_$_TwitchAuthQueryParams _value,
      $Res Function(_$_TwitchAuthQueryParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? scope = freezed,
    Object? state = freezed,
    Object? error = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_$_TwitchAuthQueryParams(
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_TwitchAuthQueryParams implements _TwitchAuthQueryParams {
  const _$_TwitchAuthQueryParams(
      this.code, this.scope, this.state, this.error, this.errorDescription);

  factory _$_TwitchAuthQueryParams.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchAuthQueryParamsFromJson(json);

  @override
  final String? code;
  @override
  final String? scope;
  @override
  final String? state;
  @override
  final String? error;
  @override
  final String? errorDescription;

  @override
  String toString() {
    return 'TwitchAuthQueryParams(code: $code, scope: $scope, state: $state, error: $error, errorDescription: $errorDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchAuthQueryParams &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.errorDescription, errorDescription) ||
                other.errorDescription == errorDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, scope, state, error, errorDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwitchAuthQueryParamsCopyWith<_$_TwitchAuthQueryParams> get copyWith =>
      __$$_TwitchAuthQueryParamsCopyWithImpl<_$_TwitchAuthQueryParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchAuthQueryParamsToJson(
      this,
    );
  }
}

abstract class _TwitchAuthQueryParams implements TwitchAuthQueryParams {
  const factory _TwitchAuthQueryParams(
      final String? code,
      final String? scope,
      final String? state,
      final String? error,
      final String? errorDescription) = _$_TwitchAuthQueryParams;

  factory _TwitchAuthQueryParams.fromJson(Map<String, dynamic> json) =
      _$_TwitchAuthQueryParams.fromJson;

  @override
  String? get code;
  @override
  String? get scope;
  @override
  String? get state;
  @override
  String? get error;
  @override
  String? get errorDescription;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchAuthQueryParamsCopyWith<_$_TwitchAuthQueryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

TwitchAccessToken _$TwitchAccessTokenFromJson(Map<String, dynamic> json) {
  return _TwitchAccessToken.fromJson(json);
}

/// @nodoc
mixin _$TwitchAccessToken {
  String get accessToken => throw _privateConstructorUsedError;
  Duration get expiresIn => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  List<String> get scope => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchAccessTokenCopyWith<TwitchAccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchAccessTokenCopyWith<$Res> {
  factory $TwitchAccessTokenCopyWith(
          TwitchAccessToken value, $Res Function(TwitchAccessToken) then) =
      _$TwitchAccessTokenCopyWithImpl<$Res, TwitchAccessToken>;
  @useResult
  $Res call(
      {String accessToken,
      Duration expiresIn,
      String refreshToken,
      List<String> scope,
      String tokenType});
}

/// @nodoc
class _$TwitchAccessTokenCopyWithImpl<$Res, $Val extends TwitchAccessToken>
    implements $TwitchAccessTokenCopyWith<$Res> {
  _$TwitchAccessTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expiresIn = null,
    Object? refreshToken = null,
    Object? scope = null,
    Object? tokenType = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as Duration,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TwitchAccessTokenCopyWith<$Res>
    implements $TwitchAccessTokenCopyWith<$Res> {
  factory _$$_TwitchAccessTokenCopyWith(_$_TwitchAccessToken value,
          $Res Function(_$_TwitchAccessToken) then) =
      __$$_TwitchAccessTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      Duration expiresIn,
      String refreshToken,
      List<String> scope,
      String tokenType});
}

/// @nodoc
class __$$_TwitchAccessTokenCopyWithImpl<$Res>
    extends _$TwitchAccessTokenCopyWithImpl<$Res, _$_TwitchAccessToken>
    implements _$$_TwitchAccessTokenCopyWith<$Res> {
  __$$_TwitchAccessTokenCopyWithImpl(
      _$_TwitchAccessToken _value, $Res Function(_$_TwitchAccessToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? expiresIn = null,
    Object? refreshToken = null,
    Object? scope = null,
    Object? tokenType = null,
  }) {
    return _then(_$_TwitchAccessToken(
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as Duration,
      null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == scope
          ? _value._scope
          : scope // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_TwitchAccessToken implements _TwitchAccessToken {
  const _$_TwitchAccessToken(this.accessToken, this.expiresIn,
      this.refreshToken, final List<String> scope, this.tokenType)
      : _scope = scope;

  factory _$_TwitchAccessToken.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchAccessTokenFromJson(json);

  @override
  final String accessToken;
  @override
  final Duration expiresIn;
  @override
  final String refreshToken;
  final List<String> _scope;
  @override
  List<String> get scope {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scope);
  }

  @override
  final String tokenType;

  @override
  String toString() {
    return 'TwitchAccessToken(accessToken: $accessToken, expiresIn: $expiresIn, refreshToken: $refreshToken, scope: $scope, tokenType: $tokenType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchAccessToken &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            const DeepCollectionEquality().equals(other._scope, _scope) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, expiresIn,
      refreshToken, const DeepCollectionEquality().hash(_scope), tokenType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwitchAccessTokenCopyWith<_$_TwitchAccessToken> get copyWith =>
      __$$_TwitchAccessTokenCopyWithImpl<_$_TwitchAccessToken>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchAccessTokenToJson(
      this,
    );
  }
}

abstract class _TwitchAccessToken implements TwitchAccessToken {
  const factory _TwitchAccessToken(
      final String accessToken,
      final Duration expiresIn,
      final String refreshToken,
      final List<String> scope,
      final String tokenType) = _$_TwitchAccessToken;

  factory _TwitchAccessToken.fromJson(Map<String, dynamic> json) =
      _$_TwitchAccessToken.fromJson;

  @override
  String get accessToken;
  @override
  Duration get expiresIn;
  @override
  String get refreshToken;
  @override
  List<String> get scope;
  @override
  String get tokenType;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchAccessTokenCopyWith<_$_TwitchAccessToken> get copyWith =>
      throw _privateConstructorUsedError;
}

TwitchUserInfo _$TwitchUserInfoFromJson(Map<String, dynamic> json) {
  return _TwitchUserInfo.fromJson(json);
}

/// @nodoc
mixin _$TwitchUserInfo {
  String get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get broadcasterType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Uri get profileImageUrl => throw _privateConstructorUsedError;
  Uri get offlineImageUrl => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitchUserInfoCopyWith<TwitchUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitchUserInfoCopyWith<$Res> {
  factory $TwitchUserInfoCopyWith(
          TwitchUserInfo value, $Res Function(TwitchUserInfo) then) =
      _$TwitchUserInfoCopyWithImpl<$Res, TwitchUserInfo>;
  @useResult
  $Res call(
      {String id,
      String login,
      String displayName,
      String type,
      String broadcasterType,
      String description,
      Uri profileImageUrl,
      Uri offlineImageUrl,
      int viewCount,
      String email,
      DateTime createdAt});
}

/// @nodoc
class _$TwitchUserInfoCopyWithImpl<$Res, $Val extends TwitchUserInfo>
    implements $TwitchUserInfoCopyWith<$Res> {
  _$TwitchUserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? displayName = null,
    Object? type = null,
    Object? broadcasterType = null,
    Object? description = null,
    Object? profileImageUrl = null,
    Object? offlineImageUrl = null,
    Object? viewCount = null,
    Object? email = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterType: null == broadcasterType
          ? _value.broadcasterType
          : broadcasterType // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      offlineImageUrl: null == offlineImageUrl
          ? _value.offlineImageUrl
          : offlineImageUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TwitchUserInfoCopyWith<$Res>
    implements $TwitchUserInfoCopyWith<$Res> {
  factory _$$_TwitchUserInfoCopyWith(
          _$_TwitchUserInfo value, $Res Function(_$_TwitchUserInfo) then) =
      __$$_TwitchUserInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String login,
      String displayName,
      String type,
      String broadcasterType,
      String description,
      Uri profileImageUrl,
      Uri offlineImageUrl,
      int viewCount,
      String email,
      DateTime createdAt});
}

/// @nodoc
class __$$_TwitchUserInfoCopyWithImpl<$Res>
    extends _$TwitchUserInfoCopyWithImpl<$Res, _$_TwitchUserInfo>
    implements _$$_TwitchUserInfoCopyWith<$Res> {
  __$$_TwitchUserInfoCopyWithImpl(
      _$_TwitchUserInfo _value, $Res Function(_$_TwitchUserInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? displayName = null,
    Object? type = null,
    Object? broadcasterType = null,
    Object? description = null,
    Object? profileImageUrl = null,
    Object? offlineImageUrl = null,
    Object? viewCount = null,
    Object? email = null,
    Object? createdAt = null,
  }) {
    return _then(_$_TwitchUserInfo(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == broadcasterType
          ? _value.broadcasterType
          : broadcasterType // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      null == offlineImageUrl
          ? _value.offlineImageUrl
          : offlineImageUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_TwitchUserInfo implements _TwitchUserInfo {
  const _$_TwitchUserInfo(
      this.id,
      this.login,
      this.displayName,
      this.type,
      this.broadcasterType,
      this.description,
      this.profileImageUrl,
      this.offlineImageUrl,
      this.viewCount,
      this.email,
      this.createdAt);

  factory _$_TwitchUserInfo.fromJson(Map<String, dynamic> json) =>
      _$$_TwitchUserInfoFromJson(json);

  @override
  final String id;
  @override
  final String login;
  @override
  final String displayName;
  @override
  final String type;
  @override
  final String broadcasterType;
  @override
  final String description;
  @override
  final Uri profileImageUrl;
  @override
  final Uri offlineImageUrl;
  @override
  final int viewCount;
  @override
  final String email;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'TwitchUserInfo(id: $id, login: $login, displayName: $displayName, type: $type, broadcasterType: $broadcasterType, description: $description, profileImageUrl: $profileImageUrl, offlineImageUrl: $offlineImageUrl, viewCount: $viewCount, email: $email, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitchUserInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.broadcasterType, broadcasterType) ||
                other.broadcasterType == broadcasterType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.offlineImageUrl, offlineImageUrl) ||
                other.offlineImageUrl == offlineImageUrl) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      login,
      displayName,
      type,
      broadcasterType,
      description,
      profileImageUrl,
      offlineImageUrl,
      viewCount,
      email,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TwitchUserInfoCopyWith<_$_TwitchUserInfo> get copyWith =>
      __$$_TwitchUserInfoCopyWithImpl<_$_TwitchUserInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwitchUserInfoToJson(
      this,
    );
  }
}

abstract class _TwitchUserInfo implements TwitchUserInfo {
  const factory _TwitchUserInfo(
      final String id,
      final String login,
      final String displayName,
      final String type,
      final String broadcasterType,
      final String description,
      final Uri profileImageUrl,
      final Uri offlineImageUrl,
      final int viewCount,
      final String email,
      final DateTime createdAt) = _$_TwitchUserInfo;

  factory _TwitchUserInfo.fromJson(Map<String, dynamic> json) =
      _$_TwitchUserInfo.fromJson;

  @override
  String get id;
  @override
  String get login;
  @override
  String get displayName;
  @override
  String get type;
  @override
  String get broadcasterType;
  @override
  String get description;
  @override
  Uri get profileImageUrl;
  @override
  Uri get offlineImageUrl;
  @override
  int get viewCount;
  @override
  String get email;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TwitchUserInfoCopyWith<_$_TwitchUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
