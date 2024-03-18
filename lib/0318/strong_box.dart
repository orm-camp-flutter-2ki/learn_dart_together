import 'key_type.dart';

class StrongBox<T> {

  T? _data;
  KeyType key;
  int tryCount = 0;
  bool isOpen = true;

  StrongBox(this.key);

  void put(T data) {
    if (!isOpen) return;
    _data = data;
  }

  T? get() {
    if (isOpen) return _data;
    tryCount += 1;
    if (tryCount >= key.needToTry) {
      isOpen = true;
      return _data;
    }
    return null;
  }

  void close() {
    if (!isOpen) return;
    tryCount = 0;
    isOpen = false;
  }
}