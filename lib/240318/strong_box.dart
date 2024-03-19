enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E> {
  E? _data; // 금고에 넣을 물건 (타입 미정)
  int _usageCount = 0; // 열쇠 사용 횟수
  bool _locked = false; // 열쇠 잠김 여부(test에 사용)
  final KeyType _keyType; // keyType에 따른 사용횟수

  StrongBox(this._keyType);

// 클래스 내부에서만 사용되는 메소드 은닉화
  int _getKeyLimit() {
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

  // 클래스 내부에서만 사용되는 메소드 은닉화
  bool _isLocked() {
    return _usageCount >= _getKeyLimit();
  }

  // 테스트에서 사용할 코드 (은닉화하지 않음)
  void lock() {
    _locked = true;
  }

  E? get() {
    // 자물쇠가 잠기지 않고, 사용횟수가 제한횟수보다 작을 때
    if (_locked != true && !_isLocked() && _usageCount < _getKeyLimit()) {
      _usageCount += 1;
      return _data;
    } else {
      print("상자가 잠겨 있거나 사용 횟수를 초과하여 물건을 꺼낼 수 없습니다.");
      return null;
    }
  }

  void put(E? data) {
    // 자물쇠가 잠겨있지 않으면 데이터를 전달
    if (!_isLocked()) {
      _data = data;
    } else {
      print("상자가 잠겨 있어서 물건을 넣을 수 없습니다.");
    }
  }
}
