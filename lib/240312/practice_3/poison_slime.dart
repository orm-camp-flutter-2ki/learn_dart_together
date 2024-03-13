import 'slime.dart';
import 'hero.dart';

class PoisonSlime extends Slime {

  int poisonAttackCount = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {

    // 우선, “보통 슬라임과 같은 공격"을 한다.
    super.attack(hero);

    // "독 공격의 남은 횟수"가 0이 아니면
    if( poisonAttackCount > 0 ) {
      print('추가로, 독 포자를 살포했다!');

      int damage = ( hero.hp * (1.0/5) ).toInt();
      print('$damage포인트의 데미지');

      hero.hp = hero.hp - damage;

      // 독 공격 횟수 1 감소
      poisonAttackCount--;

    } else {
      print('독을 다 썼다.');
    }
  }
}