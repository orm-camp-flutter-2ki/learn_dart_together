void main() {
  StrongBox strongBox = StrongBox(keyValue: KeyType.padlock);
  for (int i = 0; i < 1025; i++) {
    print('결과 : ${strongBox.tryUnlock()}. 횟수:${strongBox.count}');
  }
}

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
        _count++;
        print('횟수$_count');
        return (_count < 1024) ? null : _treasure;
      case KeyType.button:
        _count++;
        return (_count < 10000) ? null : _treasure;
      case KeyType.dial:
        _count++;
        return (_count < 30000) ? null : _treasure;
      case KeyType.finger:
        _count++;
        return (_count < 1000000) ? null : _treasure;
    }
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
