import 'dart:math';

class Cleric {
  String name;

  int hp;
  int mp;

  final int maxHp = 50;
  final int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    mp -= 5;
    hp = maxHp;
  }

  int pray(int sec) {
    mp += sec * Random().nextInt(3);
    if (mp > maxMp) {
      mp = maxMp;
    }
    return mp;
  }
}
