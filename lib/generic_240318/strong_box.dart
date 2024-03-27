
//enum 열거형
enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

// 금고 클래스에 담는 인스턴스의 타입 미정
class StrongBox<T> {
  T? _data;
  final KeyType _keyType;
  int counter = 0;

  StrongBox({required KeyType keyType}) : _keyType = keyType;

  //put() 메서드로 인스턴스를 저장
  void put(T data) {
    _data = data;
  }

  // getter 접근자
  T? get() {
    if (counter < maxLimitedUsage()-1) {
      counter++;
      return null;
    } else if (counter == maxLimitedUsage()-1){
      counter++;
      print('Max Usage');
      return _data; //최대치 도달하면 아이템(data) 반환
    }
    return null;
  }

  // 함수
  int maxLimitedUsage() {
    switch (_keyType) {
      case KeyType.padlock:
        return 1024;
      case KeyType.button:
        return 10000;
      case KeyType.dial:
        return 30000;
      case KeyType.finger:
        return 100000;
    }
  }
}


