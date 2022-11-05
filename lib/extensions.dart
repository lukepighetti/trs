extension LetX<T> on T {
  K let<K>(K Function(T it) fn) => fn(this);
}

extension NullableStringX on String? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}

extension NullableListX<T> on List<T>? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}

extension NullableMapX<K, V> on Map<K, V>? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}
