
class StrongBox<E> {
  E? _data;
  final KeyType _keyType;
  int _count = 0;

  StrongBox(this._keyType);

  void put(E data) {
    _data = data;
  }

  E? get() {
    if (_count != max) {
      _count += 1;
      return null;
    } else {
      return _data;
    }
  }

  int get max {
    switch (_keyType) {
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

enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

/*
enum KeyType{
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<T> {
  T? _treasure;
  final KeyType _keyType;
  int _count = 0;
  int _keyCount = 0;

  StrongBox({required KeyType keyType}) : _keyType = keyType;



  void put(T treasure) {
    _treasure = treasure;
  }

  T? get() {
    _count ++;

    int keyCount = 0;
    switch(_keyType){
      case KeyType.padlock:
        keyCount = 1024;
      case KeyType.button:
        keyCount = 10000;
      case KeyType.dial:
        keyCount = 30000;
      case KeyType.finger:
        keyCount = 1000000;
    }
    if(_count < keyCount){
      return null;
    }
    return _treasure;
  }
}
*/