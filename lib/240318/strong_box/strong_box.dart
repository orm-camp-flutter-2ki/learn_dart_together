class StrongBox<T> {
  T? _treasure;

  void put(T treasure) {
    _treasure = treasure;
  }

  T? get() {
    return _treasure;
  }
}
