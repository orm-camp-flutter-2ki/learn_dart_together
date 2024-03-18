enum KeyType { padlock, button, dial, finger }

class StrongBox<E> {
  final KeyType keyType;
  E? _item;

  int _count = 0;

  StrongBox(this.keyType);

  void put(E item) {
    _item = item;
  }

  E? boxCount(int value) {
    if (_count < value) {
      _count++;
      return null;
    } else {
      return _item;
    }
  }

  E? get() {
    switch (keyType) {
      case KeyType.padlock:
        boxCount(1024);
      case KeyType.button:
        boxCount(10000);
      case KeyType.dial:
        boxCount(30000);
      case KeyType.finger:
        boxCount(1000000);
    }
    return null;    // <- return null 이 추가되는 이유를 모르겠습니다.
  }
}

void main() {
  StrongBox box = StrongBox(KeyType.finger);

  box.put('보석');

  for (int i = 0; i < 1024; i++) {
    box.get();
  }

  // print('마지막 시도 : ${box.get()}');
}
