import 'package:learn_dart_together/240312/hero.dart';
import 'package:learn_dart_together/240312/slime.dart';

class PoisonSlime extends Slime {
  int _poisonAttack = 5; // 초기값 확인

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    print('슬라임$suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
    int poisonDamage = (hero.hp * 0.2).round();
    if (_poisonAttack > 0) {
      print('추가로, 독 포자를 살포했다!');
      hero.hp -= poisonDamage;
      print('$poisonDamage포인트의 데미지');
      _poisonAttack--;
      print('포이즌 공격 남은 횟수 : $_poisonAttack');
    } else {
      print('독 공격은 없었다.');
    }
  }
}
