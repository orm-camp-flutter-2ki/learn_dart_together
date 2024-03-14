// 특징을 정의
// 청사진
//

// 클래스
class Person {}


// 인터페이스
abstract interface class Human {
  void speak();
  void jump();
}

// 추상 클래스
abstract class Korean extends Person implements Human {
  int hp = 0;

  void walk() {
    print('뚜벅');
  }

  @override
  void speak() {
    print('나는 한국인입니다');
  }

}
