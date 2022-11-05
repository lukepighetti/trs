import 'dart:collection';
import 'dart:convert';
import 'dart:io';

final db = JsonDatabase();

extension JsonDatabaseMaps on JsonDatabase {
  Map<String, dynamic> get twitchAccessTokens {
    return db['twitch-access-tokens'] ??= <String, dynamic>{};
  }

  Map<String, dynamic> get twitchUserInfo {
    return db['twitch-user-info'] ??= <String, dynamic>{};
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
