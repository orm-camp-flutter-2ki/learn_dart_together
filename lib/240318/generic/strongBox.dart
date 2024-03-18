import 'keyType.dart';

class StrongBox<E> {
  E? _data;

  KeyType keyType;

  int number = 0;

  StrongBox(this.keyType);

  void put(E data) {
    _data = data;
  }

  E? get() {
    number++;
    switch (keyType) {
      case KeyType.padlock:
        if (number <= 1024) {
          return null;
        } else {
          return _data;
        }
      case KeyType.button:
        if (number <= 10000) {
          return null;
        } else {
          return _data;
        }
      case KeyType.dial:
        if (number <= 30000) {
          return null;
        } else {
          return _data;
        }
      case KeyType.finger:
        if (number <= 1000000) {
          return null;
        } else {
          return _data;
        }
    }
  }

}
