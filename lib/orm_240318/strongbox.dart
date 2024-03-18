class StrongBox<E> {
  E? _data;

  void put(E data) {
    _data = data;
  }

  E? get() {
    return _data;
  }
}
