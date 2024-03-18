import 'package:learn_dart_together/240318/key_type.dart';

class StrongBox<E> {
  E? _data;
  int _keyPoint = 0;

  final KeyType _keyType;

  StrongBox({required KeyType keyType})
      : _keyType = keyType
  {
    switch (_keyType) {
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
