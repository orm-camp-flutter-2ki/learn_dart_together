import 'hero.dart';

class Wizard {
  String name;
  int hp;

  Wizard({
    required this.name,
    required this.hp,
  });

  void heal(Hero hero) {
    int healStart = 10;
    hero.hp += healStart;
    print('${hero.name}의 hp를 $healStart만큼 회복했다.');
  }
}
