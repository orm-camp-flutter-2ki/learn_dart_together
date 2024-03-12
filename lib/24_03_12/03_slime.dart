import '01_hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('$suffix이/가 공격했다.');
    print('10의 데미지');

    hero.hp -= 10;
  }
}
