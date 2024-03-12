import 'package:learn_dart_together/24_03_12/hero.dart';
import 'package:learn_dart_together/24_03_12/slime.dart';

class PoisonSlime extends Slime {
  int attackCount = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);

    if (attackCount != 0) {
      print('추가로, 독 포자를 살포했다!');
      int poisonDamage = hero.hp ~/ 5;
      hero.hp -= poisonDamage;
      print('$poisonDamage포인트의 데미지');
      attackCount -= 1;
    }
  }
}
