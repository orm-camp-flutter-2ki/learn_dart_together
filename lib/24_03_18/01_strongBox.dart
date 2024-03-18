enum KeyType { padlock, button, dial, finger }

class StrongBox<E> {
  final KeyType keyType;
  E? _item;

  int _count = 0;

  StrongBox(this.keyType);

  void put(E item) {
    _item = item;
  }

  E? get() {
    switch (keyType) {
      case KeyType.padlock:
        if (_count < 1024) {
          _count++;
          return null;
        } else {
          return _item;
        }
      case KeyType.button:
        if (_count < 10000) {
          _count++;
          return null;
        } else {
          return _item;
        }
      case KeyType.dial:
        if (_count < 30000) {
          _count++;
          return null;
        } else {
          return _item;
        }
      case KeyType.finger:
        if (_count < 1000000) {
          _count++;
          return null;
        } else {
          return _item;
        }
    }
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
