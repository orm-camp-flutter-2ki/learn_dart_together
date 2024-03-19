enum KeyType {
  // 열거형 열쇠 종류
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<T> {
  // 1. 인스턴스 타입 미정
  T? _item;
  KeyType keyType; // 열쇠 종류 필드 변수

  static final int padlockMax = 1024;
  static final int buttonMax = 10000;
  static final int dialMax = 30000;
  static final int fingerMax = 1000000;

  int useNum = 0;

  StrongBox({required this.keyType});

  // 열쇠 종류 받는 생성자

  void put(T item) {
    // 3. 인스턴스 저장
    _item = item;
  }

  T? get() {
    // 3. 인스턴스 얻기
    useNum++;

    switch (keyType) {
      case KeyType.padlock:
        if (useNum <= padlockMax) {
          return null;
        }
      case KeyType.button:
        if (useNum <= buttonMax) {
          return null;
        }
      case KeyType.dial:
        if (useNum <= dialMax) {
          return null;
        }
      case KeyType.finger:
        if (useNum <= fingerMax) {
          return null;
        }
    }

    return _item;
  }
}
