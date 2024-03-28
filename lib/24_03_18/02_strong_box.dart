//연습문제 1에서 작성한 StrongBox 클래스에 열쇠의 종류를 나타내는 열거형 KeyType을 정의하고,
//다음 내용을 반영하여 StrongBox 클래스를 수정하시오.
//
//열쇠의 종류를 나타내는 필드 변수
//열쇠의 종류를 받는 생성자
//
//단, 열쇠의 종류는 다음 4종류로 한정한다. 각 열쇠 종류는 시도횟수의 한도가 정해져 있다.
//
//
//padlock    (1,024회)
//button      (10,000회)
//dial             (30,000회)
//finger       (1,000,000회)
//
//금고에서 get() 메서드를 호출할 때 마다 사용횟수를 카운트하고 각 열쇠의 사용횟수에 도달하기 전에는 null을 리턴한다.
//
//예를 들어, 쿠팡에서 이 금고를 주문할 때 키 타입을 정해서 주문을 한다.
//금고에 넣고 싶은 것을 넣을 수 있다.
//키 타입에 따라 정해진 횟수만큼은 열리지 않는다.
//횟수에 도달하면 잠금이 해제되어 열린다.

class StrongBox<E> {
  final KeyType _keyType; // 열쇠의 종류
  int _attemptCount = 0; // 시도 횟수
  E? _content; // 금고 내용물

  // 열쇠의 종류를 받는 생성자
  StrongBox(this._keyType);

  //금고에 내용물을 넣는 메서드
  void put(E content) {
    _content = content;
  }

  E? get() {
    _attemptCount++;
    if (_attemptCount > _limitForKeyType(_keyType)) {
      return _content;
    } else {
      return null; // 정해진 횟수에 도달하기 전에는 null 반환
    }
  }

  int _limitForKeyType(KeyType type) {
    switch (type) {
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

void main() {
  // padlock 키 타입의 StrongBox 인스턴스 생성
  StrongBox newBox = StrongBox(KeyType.padlock);

  // 금고에 "secret Document"를 넣음
  newBox.put("Secret Document");

  // 1024번 시도해야 열리는 padlock 키 타입 금고 시도해 봄
  for (int i = 0; i < 1025; i++) {
    var content = newBox.get();
    if (content != null) {
      print("금고가 열렸습니다! 내용물 : $content");
      break;
    }
    if (i < 1024) {
      print("금고가 아직 열리지 않았습니다. 시도 횟수: $i");
    }
  }
}

enum KeyType {
  padlock,
  button,
  dial,
  finger,
}
