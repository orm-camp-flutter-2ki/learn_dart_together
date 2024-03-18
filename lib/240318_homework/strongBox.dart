void main() {
  StrongBox strongBox = StrongBox(keyValue: KeyType.padlock, treasure: '황금');
  for (int i = 0; i < 1025; i++) {
    print('결과 : ${strongBox.tryUnlock()}. 횟수:${strongBox.count}');
  }
}

class StrongBox<E> {
  E _treasure;
  KeyType keyValue;
  int _count = 0;

  void put(E treasure) {
    _treasure = treasure;
  }

  int get count => _count;

  E? get() {
    return _treasure;
  }

  StrongBox({required this.keyValue, required E treasure})
      : _treasure = treasure;

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
