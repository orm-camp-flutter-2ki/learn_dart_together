import 'package:learn_dart_together/240318/key_type.dart';

class StrongBox<E> {
  E? _data;
  int _keyPoint = 0;

  final KeyType _keyType;

  StrongBox({required KeyType keyType})
      : _keyType = keyType
  {
    _keyPoint = switch (_keyType) {
      KeyType.padlock => 1024,
      KeyType.button => 10000,
      KeyType.dial => 30000,
      KeyType.finger => 1000000,
    };
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
