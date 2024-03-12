import 'package:learn_dart_together/240312/hero.dart';
import 'package:learn_dart_together/240312/slime.dart';


class PoisonSlime extends Slime {
  int attackCount = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다.');
    print('10의 데미지');
    hero.hp -= 10;

    if (attackCount > 0) {
      print('추가로, 독 포자를 살포했다!');
      int poisonDamage = (hero.hp * 0.2).toInt();
      print('$poisonDamage 포인트의 데미지!');
      hero.hp -= poisonDamage;
      attackCount--;
    }
  }
}
