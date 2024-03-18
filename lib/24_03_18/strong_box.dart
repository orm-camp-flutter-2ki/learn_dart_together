enum KeyType {
  padlock,
  button,
  dial,
  finger
}

class StrongBox<T> {
  final KeyType _keyType;
  T _savedInstance;
  int _usedCnt = 0;

  StrongBox(this._savedInstance, this._keyType);

  void put(T newInstance) => _savedInstance = newInstance;

  T? get() {
    var limitCnt = switch (_keyType) {
      KeyType.padlock => 1024,
      KeyType.button => 10000,
      KeyType.dial => 30000,
      KeyType.finger => 1000000,
    };
    _usedCnt++;
    return _usedCnt < limitCnt ? null : _savedInstance;
  }
}