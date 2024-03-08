import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;
  final int maxhp = 50;
  final int maxmp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (mp <= 0) {
      print('MP가 부족합니다.');
    } else {
      mp -= 5;
      hp = maxhp;
    }
  }

  int pray(a) {
    int sec = a;
    int recovery = sec + Random().nextInt(3);
    int over_recovery = -(mp - maxmp);
    mp += recovery;
    if (mp >= maxmp) {
      recovery = over_recovery;
      mp = maxmp;
    }
    return recovery;
  }
}
