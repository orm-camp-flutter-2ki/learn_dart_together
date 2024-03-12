import 'slime.dart';
import 'hero.dart';

import 'slime.dart';
import 'hero.dart';

class PoisonSlime extends Slime {
  int ableAttackCnt = 5; // 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero); // 우선, “보통 슬라임과 같은 공격"을 한다
    // “독 공격의 남은 횟수"가 0이 아니면 다음을 추가로 수행한다
    if (ableAttackCnt > 0) {
      print('추가로, 독 포자를 살포했다!');
      int poisonDamage = (hero.hp ~/ 5).toInt(); // 용사의 HP의 1/5를 계산
      hero.hp -= poisonDamage;
      print('$poisonDamage의 데미지');
      ableAttackCnt--;
    }
  }
}