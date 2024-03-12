import 'package:learn_dart_together/240312/slime/slime.dart';

import 'hero.dart';

class PoisonSlime extends Slime {
  int _poisonAtackPoint = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (_poisonAtackPoint > 0) {
      print("추가로, 독 포자를 살포했다!");
      int poisonDamage = hero.hp ~/ 5;
      hero.hp = hero.hp - poisonDamage;
      print("$poisonDamage포인트의 데미지");
      _poisonAtackPoint -= 1;
      print('hero hp : ${hero.hp}');
    }
  }
}

void main() {
  Hero hero = Hero("영웅", 100);
  PoisonSlime poisonSlime = PoisonSlime('A');

  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
}
