import 'package:learn_dart_together/24_03_12/slime.dart';

import 'hero.dart';

class PoisonSlime extends Slime {
  PoisonSlime(super.suffix);

  int _numOfAttack = 5;

  void attack(Hero hero) {
    super.attack(hero);
    if (0 < _numOfAttack || _numOfAttack <= 5) {
      print('추가로 독포자를 살포했다!');
      print('${hero.hp ~/ 5}포인트의 데미지');
      hero.hp = hero.hp - (hero.hp ~/ 5);
      _numOfAttack -= 1;
    }
  }
}


