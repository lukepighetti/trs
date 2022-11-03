import 'dart:collection';
import 'dart:convert';
import 'dart:io';

final db = JsonDatabase();

extension JsonDatabaseMaps on JsonDatabase {
  Map<String, dynamic> get twitchAccessTokens {
    return db['twitch-access-tokens'] ??= <String, dynamic>{};
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

  @override
  operator [](Object? key) {
    _store[key];
  }

  @override
  void operator []=(String key, value) {
    _store[key] = value;
    save();
  }

  @override
  void clear() {
    _store.clear();
    save();
  }

  @override
  Iterable<String> get keys => _store.keys;

  @override
  remove(Object? key) {
    _store.remove(key);
    save();
  }

  void save() {
    _file.writeAsStringSync(jsonEncode(_store));
  }
}
