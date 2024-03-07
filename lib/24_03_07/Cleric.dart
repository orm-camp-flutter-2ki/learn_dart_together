import 'dart:math';

class Cleric {
  String name;
  int hp;
  final int maxHp = 50;
  int mp;
  final int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

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
