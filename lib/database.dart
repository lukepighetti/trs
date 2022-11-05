import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'twitch_client.dart';

final db = JsonDatabase();

extension JsonDatabaseMaps on JsonDatabase {
  Map<String, TwitchAccessToken> get twitchAccessTokens {
    const key = 'twitch-access-tokens';
    db[key] ??= <String, dynamic>{};
    return TypedMapView<TwitchAccessToken>(
        db[key], TwitchAccessToken.fromJson, (v) => v.toJson());
  }

  Map<String, TwitchUserInfo> get twitchUserInfo {
    const key = 'twitch-user-info';
    db[key] ??= <String, dynamic>{};
    return TypedMapView<TwitchUserInfo>(
        db[key], TwitchUserInfo.fromJson, (v) => v.toJson());
  }
}

class TypedMapView<V> with MapMixin<String, V> {
  TypedMapView(this.ref, this.from, this.to);

  final V Function(Map<String, dynamic> json) from;

  final Map<String, dynamic> Function(V value) to;

  final Map<String, dynamic> ref;

  @override
  V? operator [](Object? key) {
    return ref[key]?.let(from);
  }

  @override
  void operator []=(String key, V value) {
    ref[key] = to(value);
  }

  @override
  void clear() {
    ref.clear();
  }

  @override
  Iterable<String> get keys => ref.keys;

  @override
  V? remove(Object? key) {
    return ref.remove(key)?.let(from);
  }
}

class JsonDatabase with MapMixin<String, dynamic> {
  final File _file = File('db.json');
  late final _store = _init();

  Map<String, dynamic> _init() {
    if (!_file.existsSync()) {
      _file.createSync(recursive: true);
      _file.writeAsStringSync('{}');
    }

    return jsonDecode(_file.readAsStringSync());
  }

  // Update the store with new data
  void setState(void Function(JsonDatabase store) db) {
    db(this);
    _save();
  }

  @override
  dynamic operator [](Object? key) {
    return _store[key];
  }

  @override
  void operator []=(String key, value) {
    _store[key] = value;
    _save();
  }

  @override
  void clear() {
    _store.clear();
    _save();
  }

  @override
  Iterable<String> get keys => _store.keys;

  @override
  remove(Object? key) {
    _store.remove(key);
    _save();
  }

  void _save() {
    _file.writeAsStringSync(jsonEncode(_store));
  }
}
