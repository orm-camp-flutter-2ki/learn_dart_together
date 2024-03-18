enum KeyType {
  padlock,
  button,
  dial,
  finger,
} // enum으로 열쇠 종류

class StrongBox<E> {
  E? _data; // X팡에서 산 금고에 넣을거
  final KeyType _keyType; // 주문한 키 타입
  int _stackUse = 0; // 열기위해 시도한 횟수
  final int _maxUse; // 이거(ex. padlock의 1024회) 넘으면 열림

  // 열쇠 종류 받는 생성자
  StrongBox(this._keyType) : _maxUse = _getMaxUse(_keyType);

  // 구매한 금고에 넣을거
  void put(E data) {
    _data = data;
  }

  // 꺼내는 작업
  E? get() {
    _stackUse++; // 열기위해 시도한 횟수 증가

    // 각 max값(열쇠의 사용횟수) 초과하기 전까지 null
    if (_stackUse <= _maxUse) {
      return null;
    } else {
      return _data; // 초과하면 열림
    }
  }

  // 열쇠 종류에 따라 시도해야 하는 횟수
  static int _getMaxUse(KeyType keyType) {
    switch (keyType) {
      case KeyType.padlock:
        return 1024;
      case KeyType.button:
        return 10000;
      case KeyType.dial:
        return 30000;
      case KeyType.finger:
        return 1000000;
      default:
        return 0;
    }
  }
}
