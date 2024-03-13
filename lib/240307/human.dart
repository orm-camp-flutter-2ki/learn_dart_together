// 특징을 정의
// 청사진
//


abstract interface class Human {
  void speak();
  void jump();
}

// 구현해서
abstract class Korean extends Human {
  @override
  void speak() {
    print('나는 한국인입니다');
  }

}
