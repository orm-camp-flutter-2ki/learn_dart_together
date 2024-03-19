enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<T> {
  T? _treasure;

  final KeyType _keyType;

  int _count = 0;

  StrongBox({required KeyType keyType}) : _keyType = keyType;

  // StrongBox.fromKeyType(this._keyType);

  void put(T treasure) {
    _treasure = treasure;
  }

  T? get() {
    _count++;

    int keyCount;

    switch(_keyType) {
      case KeyType.padlock:
        keyCount = 1024;
      case KeyType.button:
        keyCount = 10000;
      case KeyType.dial:
        keyCount = 30000;
      case KeyType.finger:
        keyCount = 1000000;
    }

    if (_count < keyCount) {
      return null;
    }

    return _treasure;
  }
}
