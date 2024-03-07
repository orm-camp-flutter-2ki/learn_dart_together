import 'dart:math';

class Cleric {
  String name; // 이름
  int hp; // HP
  final int maximumHp = 50; // 최대 HP
  int mp; // MP
  final int maximumMp = 10; // 최대 MP

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    mp -= 5;
    hp = maximumHp;
  }

  int pray(int second) {
    int healedMp = Random().nextInt(2) + second;

    if (healedMp > maximumMp - mp) {
      healedMp = maximumMp - mp;
      mp = maximumMp;
    } else {
      mp += healedMp;
    }

    return healedMp;
  }
}