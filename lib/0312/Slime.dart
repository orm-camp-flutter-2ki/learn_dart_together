import 'Hero.dart';

class Slime {
  static final maxHp = 50;
  static final int damage = 10;
  final String suffix;
  int hp = maxHp;

  Slime(this.suffix);

  void attack(Hero hero) {
    hero.hp -= damage;
    print('슬라임 $suffix이/가 공격했다.');
    print('10의 데미지');
  }
}