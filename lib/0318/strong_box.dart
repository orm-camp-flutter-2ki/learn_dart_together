import 'key_type.dart';

class StrongBox<T> {

  T? _data;
  KeyType key;
  int tryCount = 0;

  StrongBox(this.key);

  void put(T data) {
    _data = data;
  }

  T? get() {
    tryCount += 1;
    if (tryCount >= key.needToTry) return _data;
    return null;
  }
}