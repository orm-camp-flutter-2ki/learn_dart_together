import '01_hero.dart';
import '03_slime.dart';

class PoisonSlime extends Slime {
  int _leftAttack = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    print('$suffix이/가 공격했다.');
    print('10의 데미지');
    hero.hp -= 10;

    if (_leftAttack <= 5 && _leftAttack > 0) {
      int poisonDamage = hero.hp ~/ 5;

      print('추가로 독 포자를 살포했다.');

      hero.hp -= poisonDamage;

      print('$poisonDamage포인트의 데미지');

      _leftAttack--;
    }
  }
}
