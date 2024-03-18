import 'package:learn_dart_together/24_03_18/key_type.dart';

class StrongBox<E> {
  E? _stuff;
  int _count;
  final KeyType _key;

  StrongBox({required E stuff, required KeyType key})
      : _stuff = stuff,
        _key = key,
        _count = key.value;

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
