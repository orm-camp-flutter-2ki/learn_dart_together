class StrongBox<T> {

  T? _data;

  void put(T data) {
    _data = data;
  }

  T? get data => _data;
}