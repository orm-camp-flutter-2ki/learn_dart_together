import 'Hero.dart';
import 'Slime.dart';

class PoisonSlime extends Slime {

  static final maxSpecialAttackCount = 5;
  int specialAttackCount = maxSpecialAttackCount;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);

    if (specialAttackCount <= 0) return;

    int additionalDamage = hero.hp ~/ 5 * 1;
    hero.hp -= additionalDamage;
    specialAttackCount -= 1;

    print('추가로 독 포자를 살포했다!');
    print('$additionalDamage의 데미지');
  }
}