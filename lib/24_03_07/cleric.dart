import 'dart:math';

class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name;
  int hp;
  int mp;

  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp});

  void selfAid() {
    if ((mp - 5) >= 0) {
      mp -= 5;
      hp = maxHp;
    }
  }

  int pray(int second) {
    int randomNumber = Random().nextInt(3);
    int realMp = second + randomNumber;

    if ((mp + realMp) > maxMp) {
      realMp = maxMp - mp;
    }

    mp += realMp;
    return realMp;
  }
}
