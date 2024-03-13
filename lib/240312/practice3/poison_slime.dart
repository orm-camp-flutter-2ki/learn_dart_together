import 'package:learn_dart_together/240312/practice3/hero.dart';
import 'package:learn_dart_together/240312/practice3/slime.dart';

class PoisonSlime extends Slime{
  int _poisonPoint = 5;

  PoisonSlime(super.suffix);

  int get poisonPoint => _poisonPoint;

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (_poisonPoint == 0) return;

    int poisonDamage = (hero.hp / 5).round();
    print('추가로, 독 포자를 살포했다!');
    hero.hp -= poisonDamage;
    print('$poisonDamage포인트의 데미지');
    _poisonPoint -= 1;
  }
}