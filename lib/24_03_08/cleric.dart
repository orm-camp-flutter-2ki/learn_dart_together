import 'dart:math';

class Cleric {
  static const int maximumHp = 50; // 최대 HP
  static const int maximumMp = 10; // 최대 MP

  String name; // 이름
  int hp; // HP
  int mp; // MP

  Cleric(this.name, {this.hp = maximumHp, this.mp = maximumMp});

  void selfAid() {
    if (mp < 5) return;
    mp -= 5;
    hp = maximumHp;
  }

  int pray(int second) {
    int healedMp = Random().nextInt(3) + second;

    if (healedMp > maximumMp - mp) {
      healedMp = maximumMp - mp;
      mp = maximumMp;
    } else {
      mp += healedMp;
    }

    return healedMp;
  }
}
