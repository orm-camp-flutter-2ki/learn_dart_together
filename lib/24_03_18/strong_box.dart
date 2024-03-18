class StrongBox<T> {
  T? _stuff;
  final KeyType _key;
  int count = 0;

  StrongBox({required KeyType key}) : _key = key;

  void put(T stuff) {
    _stuff = stuff;
  }

  T? get() {
    if (_key.value > count) {
      count++;
      return null;
    }
    return _stuff;
  }
}

enum KeyType {
  padlock,
  button,
  dial,
  finger;

  int get value {
    switch (this) {
      case padlock:
        return 1024;
      case button:
        return 10000;
      case dial:
        return 30000;
      case finger:
        return 1000000;
    }
  }
}
