enum KeyType { //열쇠 종류를 정의
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E> {
  E? _data;
  KeyType _keyType;
  int useCount = 0;

  /// 열쇠 종류를 받는 생성자
  StrongBox(this._keyType);

  /// 인스턴스를 저장
  void put(E data) {
    _data = data;
  }

  /// 저장된 인스턴스를 반환
  /// 사용 횟수 제한을 고려하여 null을 리턴
  E? get() {
    if (useCount < _getAllowedUseCount()) {
      useCount++;
      return _data;
    }
    return null;
  }

  /// 허용된 사용 횟수를 반환
  int _getAllowedUseCount() {
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
