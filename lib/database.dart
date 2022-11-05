// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'twitch_client.dart';

part 'database.freezed.dart';
part 'database.g.dart';

final db =
    JsonDatabase(File('db.json'), DatabaseModel.fromJson, (v) => v.toJson());

@unfreezed
class DatabaseModel with _$DatabaseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory DatabaseModel(
    @JsonKey(defaultValue: {}) Map<String, TwitchAccessToken> twitchAccessToken,
    @JsonKey(defaultValue: {}) Map<String, TwitchUserInfo> twitchUserInfo,
  ) = _DatabaseModel;

  factory DatabaseModel.fromJson(Map<String, Object?> json) =>
      _$DatabaseModelFromJson(json);
}

class JsonDatabase<T> {
  JsonDatabase(this._file, this._fromJson, this._toJson);

  final File _file;
  final T Function(Map<String, dynamic> json) _fromJson;
  final Map<String, dynamic> Function(T value) _toJson;

  late final _data = _init();
  T get data => _data;

  T _init() {
    if (!_file.existsSync()) {
      _file.createSync(recursive: true);
      _file.writeAsStringSync("{}");
    }

    return _fromJson(jsonDecode(_file.readAsStringSync()));
  }

  void update(void Function(T) updates) {
    updates(data);
    _save();
  }

  void _save() {
    _file.writeAsStringSync(jsonEncode(_toJson(_data)));
  }
}
