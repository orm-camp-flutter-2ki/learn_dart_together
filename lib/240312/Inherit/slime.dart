import 'hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임 $suffix 이/가 공격했다');
    print('10의 데미치');
    hero.hp -= 10;
  }
}
