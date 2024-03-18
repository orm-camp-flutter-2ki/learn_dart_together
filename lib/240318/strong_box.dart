enum KeyType { padlock, button, dial, finger }

class StrongBox<T> {
  KeyType keyType; // 열쇠의 종류를 나타내는 필드변수
  T? _item;
  int _tryCount = 0;

  // 열쇠의 종류를 받는 생성자
  StrongBox(this.keyType);

  // 각 열쇠 종류의 시도횟수의 한도
  int _limitCount(KeyType keyType) {
    switch (keyType) {
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

  // 금고에서 get() 메서드 호출할 때 마다 사용횟수를 카운트
  T? get() {
    int limitCount = _limitCount(keyType);

    if (_tryCount < limitCount) {
      _tryCount++;
      return null; // 키 타입에 따라 정해진 횟수만큼은 열리지 않는다.
    } else {
      return _item; // 횟수에 도달하면 잠금이 해제되어 열린다.
    }
  }

  // 금고에 넣고 싶은 것을 넣을 수 있다.
  void put(T item) {
    _item = item;
  }
}

