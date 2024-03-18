class StrongBox<T> {
  T? _item;

  StrongBox({T? item}) : _item = item;

  void put(T item) => _item = item;

  T? get() => _item;
}
