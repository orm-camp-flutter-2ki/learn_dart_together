class StrongBox<E> {
  E? _data;

  void put(E data) {
    _data = data;
  }

  get() {
    return _data;
  }
}
