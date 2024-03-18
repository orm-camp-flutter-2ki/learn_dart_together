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
    switch (this) { //this = KeyType를 넣은 것
      case KeyType.padlock:
        return 1024;
      case KeyType.button:
        return 10000;
      case KeyType.dial:
        return 30000;
      case KeyType.finger:
        return 1000000;
    }
  }
}
