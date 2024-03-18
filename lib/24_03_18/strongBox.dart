enum KeyType { padlock, button, dial, finger }

class StrongBox<T> {
  T? _data;
  int _usageCount = 0;
  final KeyType _keyType;

  StrongBox(this._keyType);

  void put(T data) {
    _data = data;
  }

  T? get() {
    _usageCount++;
    int maxUsage = getMaxUsage();
    if (_usageCount < maxUsage) {
      return null; // 사용 횟수가 최대 사용 횟수에 도달하지 않으면 null을 반환
    } else {
      return _data; // 사용 횟수가 최대 사용 횟수에 도달하면 아이템을 반환
    }
  }

  int getMaxUsage() {
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
