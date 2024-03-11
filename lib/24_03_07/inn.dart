import 'Hero.dart';

class Inn{

  int _count = 0;

  void checkInn(Hero hero) {
    hero.hp;
    print('${hero.hp}');

  }
}
class A {
  void a() {
    Inn inn = Inn();
    inn._count = 0; // 같은 파일이면 다른 클래스여도 private 변수 참조 가능
  }
}