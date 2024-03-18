class StrongBox<E> {
  E? _treasure;
  KeyType keyValue;
  int _count = 0;

  void put(E treasure) {
    _treasure = treasure;
  }

  int get count => _count;

  E? get() {
    return _treasure;
  }

  StrongBox({required this.keyValue});

  E? tryUnlock() {
    switch (keyValue) {
      case KeyType.padlock:
        if (_count++ < 1024) return null;
      case KeyType.button:
        if (_count++ < 10000) return null;
      case KeyType.dial:
        if (_count++ < 30000) return null;
      case KeyType.finger:
        if (_count++ < 1000000) return null;
    }
    return _treasure;
  }
}

enum KeyType {
  padlock,
  button,
  dial,
  finger,
}
// enum KeyType {
//   padlock(type: 'padlock', count: 1024),
//   button(type: 'button', count: 10000),
//   dial(type: 'dial', count: 30000),
//   finger(type: 'finger', count: 1000000);
//
//   final String type;
//   final int count;
//
//   const KeyType({required this.type, required this.count});
// }
