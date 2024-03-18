enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E> {
  E? _data;
  int _usageCount = 0;
  bool _locked = false;
  final KeyType _keyType;

  StrongBox(this._keyType);

  int getKeyLimit() {
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

  bool isLocked() {
    return _usageCount >= getKeyLimit();
  }

  void lock() {
    _locked = true;
  }

  E? get() {
    if (_locked != true && !isLocked() && _usageCount < getKeyLimit()) {
      _usageCount += 1;
      return _data;
    } else {
      print("상자가 잠겨 있거나 사용 횟수를 초과하여 물건을 꺼낼 수 없습니다.");
      return null;
    }
  }

  void put(E? data) {
    if (!isLocked()) {
      _data = data;
    } else {
      print("상자가 잠겨 있어서 물건을 넣을 수 없습니다.");
    }
  }
}
