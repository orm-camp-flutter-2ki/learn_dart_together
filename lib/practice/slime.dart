import 'hero.dart';

class Slime {
  final String _suffix;
  int hp = 50;

  Slime(this._suffix);

  void attack(Hero hero) {
    print('슬라임$_suffix이/가 공격했다.');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  int _remainAttackCnt = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (_remainAttackCnt == 0) return;

    int poisonDamage = hero.hp ~/ 5;
    print('추가로 독 포자를 살포했다!');
    print('$poisonDamage포인트의 데미지');
    _remainAttackCnt--;
  }
}
