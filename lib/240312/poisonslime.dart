import 'package:learn_dart_together/240312/slime.dart';
import 'package:learn_dart_together/240312/hero.dart';

class PoisonSlime extends Slime {
  PoisonSlime(super.suffix);

  int count = 5;

  // PoisonSlime poisonSlime = PoisonSlime('A');

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (count > 0) {
      print('추가로, 독 포자를 살포했다!');
      int posionDamage = hero.hp ~/ 5; // 체력의 1/5 추가 독공격
      hero.takePosion(posionDamage);
      print('$posionDamage 데미지');
    }
    --count;
    print('남은공격횟수 :$count');
  }
}
