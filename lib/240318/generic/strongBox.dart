import 'keyType.dart';

class StrongBox<E> {
  E? _data;

  KeyType keyType;

  int _number = 0;

  StrongBox(this.keyType);

  void put(E data) {
    _data = data;
  }

  int get number {
    return _number;
  }

  E? get() {
    _number++;
    switch (keyType) {
      case KeyType.padlock:
        if (_number <= 1024) {
          return null;
        } else {
          return _data;
        }
      case KeyType.button:
        if (_number <= 10000) {
          return null;
        } else {
          return _data;
        }
      case KeyType.dial:
        if (_number <= 30000) {
          return null;
        } else {
          return _data;
        }
      case KeyType.finger:
        if (_number <= 1000000) {
          return null;
        } else {
          return _data;
        }
    }
  }
}
