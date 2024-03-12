import 'hero.dart';
import 'slime.dart';

class PoisonSlime extends Slime {
  int poisonAttackPoint = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (poisonAttackPoint > 0) {
      print('추가로, 독 포자를 살포했다!');
      int poisonDamage = hero.hp ~/ 5;
      hero.hp = hero.hp - poisonDamage;
      print('“$poisonDamage 포인트의 데미지"');
      poisonAttackPoint--;
    }
  }
}
