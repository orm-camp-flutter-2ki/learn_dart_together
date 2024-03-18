enum KeyType {
  padlock,
  button,
  dial,
  finger
}

class StrongBox<E> {
  final KeyType _keyType;
  final int maxUses;
  int _currentUses = 0;
  E? _item;

  StrongBox(this._keyType) : maxUses = _getMaxUsesForType(_keyType);

  void put(E item) {
    _item = item;
  }

  E? get() {
    if (_currentUses < maxUses) {
      _currentUses++;
      return _item;
    } else {
      return null;
    }
  }

  static int _getMaxUsesForType(KeyType keyType) {
    switch (keyType) {
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
