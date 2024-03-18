import 'package:learn_dart_together/24_03_18/-1/key_type.dart';

class StrongBox<T> {
  T? _item;
  final KeyType _key;
  int _keyUsageCount = 0;

  StrongBox({required KeyType key, T? item})
      : _item = item,
        _key = key;

  void put(T item) => _item = item;

  T? get() {
    T? result = _item;
    if (_key.value > _keyUsageCount) {
      result = null;
      ++_keyUsageCount;
    }
    return result;
  }
}
