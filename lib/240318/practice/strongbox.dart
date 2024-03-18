class StrongBox<E> {
  E? _item;

  void put(E item) => _item = item;

  E? get() {
    return _item;
  }
}