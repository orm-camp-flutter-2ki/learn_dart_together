import 'package:learn_dart_together/24_03_18/key_type.dart';

class StrongBox<E> {
  E? _stuff;
  int _count;
  final KeyType _key;

  StrongBox({required E stuff, required KeyType key})
      : _stuff = stuff,
        _key = key,
        _count = _setCount(key);

  static int _setCount(KeyType key) {
    switch (key) {
      case KeyType.padlock:
        return 1024;
      case KeyType.button:
        return 10000;
      case KeyType.dial:
        return 30000;
      case KeyType.finger:
        return 1000000;
      case KeyType.once:
        return 0;
    }
  }

  void put(E stuff) {
    _stuff = stuff;
  }

  E? get() {
    if (_count != 0) {
      _count -= 1;
      return null;
    } else {
      return _stuff;
    }
  }
}
