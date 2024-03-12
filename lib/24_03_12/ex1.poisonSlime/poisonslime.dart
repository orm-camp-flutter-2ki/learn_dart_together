import 'package:learn_dart_together/24_03_12/ex1.poisonSlime/slime.dart';
import 'hero.dart';

class PoisonSlime extends Slime {
  PoisonSlime(super.suffix);

  int numberOfPoisonAttack = 5;

  @override
  void attack(Hero hero) {

    if(numberOfPoisonAttack <= 0) {
      print('🚫🚫🚫 공격 가능 기회가 없습니다. 🚫🚫🚫');
    } else if (numberOfPoisonAttack != 0) {
      print('====================');
      print('🐍🐍🐍 추가로, 독 포자를 살포했다! 🐍🐍🐍');
      double pointOfDamage = (hero.hp) / 5;

      hero.hp -= pointOfDamage;

      print('👊👊👊 $pointOfDamage 포인트의 데미지가 가해졌습니다 👊👊👊');
    }
    numberOfPoisonAttack = --numberOfPoisonAttack;
    print('앞으로 용사 나부랭이를 $numberOfPoisonAttack 번 때릴 수 있다!!!!!');
  }
}