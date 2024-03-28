class StrongBox<E> {
  E? _data;

  put(E data) {
    _data = data;
  }

  E? get() {
    return _data;
  }
}
