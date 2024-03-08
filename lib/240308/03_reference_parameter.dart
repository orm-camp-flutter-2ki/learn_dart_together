import '../240307/hero.dart';

class Wizard {
  String name;
  int hp;

  Wizard({
    required this.name,
    required this.hp
  });

  // 함수(메소드)의 인자로 클래스의 레퍼런스를 전달 받을 수 있음
  void heal(Hero hero) {
    hero.hp += 10;
    print('${hero.name} 의 hp를 10 회복 했습니다.');
  }
}