import 'dart:math';

class Cleric {
  String name;

  int hp;
  int mp;

  static final int maxHp = 50;
  static final int maxMp = 10;

  Cleric(this.name, {this.hp = 50, this.mp = 10});

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
  static rann(){


  }
}
