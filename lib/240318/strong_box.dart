class StrongBox<E> {
  E _item;
  int _count;
  // KeyType _key;

  StrongBox(
    E item,
    KeyType key,
  )   : _item = item,
        // _key = key,
        _count = key.value;

  void put(E item) {
    _item = item;
  }

  E? get() {
    if (_count == 0) {
      return _item;
    } else {
      _count -= 1;
      return null;
    }
  }
}

enum KeyType {
  padlock,
  buttom,
  dial,
  finger;

  int get value {
    switch (this) {
      case KeyType.padlock:
        return 1024;
      case KeyType.buttom:
        return 10000;
      case KeyType.dial:
        return 30000;
      case KeyType.finger:
        return 1000000;
    }
  }
}
