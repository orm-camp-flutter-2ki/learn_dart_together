import 'dart:math';

class Cleric {
  String name;

  int hp;
  int mp;

  static const int maxHp = 50;
  static const int maxMp = 10;

  Cleric(this.name ,{this.hp = Cleric.maxHp, this.mp = Cleric.maxMp});

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
    } else {
      print('마나가 부족합니다..');
    }
  }

  int pray(int sec) {
    int recoveryMp = sec + Random().nextInt(3);
    mp += recoveryMp;
    if (mp > maxMp) {
      mp = maxMp;
    }
    return recoveryMp;
  }



}
