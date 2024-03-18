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
  int openNum = 0;
  int useNum = 0;

  StrongBox({required this.keyType});

  // 열쇠 종류 받는 생성자

  void put(T item) {
    // 3. 인스턴스 저장
    _item = item;
  }

  T? get() {
    // 3. 인스턴스 얻기
    switch (keyType) {
      case KeyType.padlock:
        openNum = 1024;
      case KeyType.button:
        openNum = 10000;
      case KeyType.dial:
        openNum = 30000;
      case KeyType.finger:
        openNum = 1000000;
    }

    useNum++;

    if (useNum <= openNum) {
      return null;
    }
    return _item;
  }
}
