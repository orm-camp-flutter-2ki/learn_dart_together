import 'package:learn_dart_together/240318/key_type.dart';

class StrongBox<E> {
  E _data;
  KeyType _keyType;
  int _keyPoint = 0;

  StrongBox({required E data, required KeyType keyType})
      : _data = data, _keyType = keyType
  {
    switch(keyType) {
      case KeyType.padlock:
        _keyPoint = 1024;
      case KeyType.button:
        _keyPoint = 10000;
      case KeyType.dial:
        _keyPoint = 30000;
      case KeyType.finger:
        _keyPoint = 1000000;
    }
}

  void put(E data) {
    _data = data;
  }

  E? get() {
    if (_keyPoint == 0) return _data;
    _keyPoint--;
    return null;
  }
}

void main() {
  StrongBox<int> a = StrongBox<int>(data: 3, keyType: KeyType.dial);
  a.put(3);
  print(a.get());
  print(a.get());
  print(a._keyPoint);
}
