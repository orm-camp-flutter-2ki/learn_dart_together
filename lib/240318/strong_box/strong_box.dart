enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<T> {
  // static final int padlock = 1024;
  // static final int button = 10000;
  // static final int dial = 30000;
  // static final int finger = 1000000;

  T? _treasure;

  final KeyType _keyType;

  int _count = 0;

  // bool get isOpen =>
  //     _count <
  //     switch (_keyType) {
  //       KeyType.padlock => 1024,
  //       KeyType.button => 10000,
  //       KeyType.dial => 30000,
  //       KeyType.finger => 1000000,
  //     };

  StrongBox({required KeyType keyType}) : _keyType = keyType;

  StrongBox.fromKeyType(this._keyType);

  void put(T treasure) {
    _treasure = treasure;
  }

  T? get() {
    // https://dart.dev/language/branches#switch-expressions
    final keyCount = switch (_keyType) {
      KeyType.padlock => 1024,
      KeyType.button => 10000,
      KeyType.dial => 30000,
      KeyType.finger => 1000000,
    };

    if (_count < keyCount) {
      _count++;
      return null;
    }

    return _treasure;
  }
}
