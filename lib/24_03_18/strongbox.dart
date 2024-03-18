import 'dart:math';
import 'keytype.dart';

class StrongBox<E> {   // StrongBox 클래스 정의
  E? _data;
  final KeyType? keyType; // 열쇠의 종류를 나타내는 필드 변수 추가
  int use = 0;

  StrongBox(this.keyType);

  void put(E data) {      // put() 메서드로 인스턴스를 저장
    _data = data;
  }

  E? get() {     // get() 메서드로 인스턴스를 얻음
    use++;      // 열기 횟수 증가
    if (use <= max) {       // 각 최대값(열쇠의 사용 횟수)을 초과하기 전까지 null을 반환
      return null;
    } else {
      return _data; // 초과하면 열림
    }
  }

  int get _max {
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
