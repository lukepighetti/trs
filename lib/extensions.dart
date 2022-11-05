extension NullableStringX on String? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}

extension NullableListX<T> on List<T>? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}

extension NullableMapX<K, V> on Map<K, V>? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}
