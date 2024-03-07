import 'dart:math';

class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name;
  int hp = maxHp;
  int mp = maxMp;

  Cleric(this.name);

  bool changeMp(int value) {
    int origin = mp;

    if (mp + value < 0) {
      print(" MP가 부족합니다.");
      return false;
    }

    mp = min(maxMp, mp + value);
    print(" MP $origin => $mp");
    return true;
  }

  bool changeHp(int value) {
    int origin = hp;

    if (hp + value < 0) {
      print("사망하였습니다.");
      return false;
    }

    hp = min(maxHp, hp + value);
    print(" HP $origin => $hp");
    return true;
  }

  void selfAid() {
    print("스킬 사용 - 셀프 에이드");

    if (hp == maxHp) {
      print(" 이미 최대 HP입니다.");
      return;
    }

    bool result = changeMp(-5);
    if (result) {
      changeHp(maxHp);
    }
  }

  int pray(int sec) {
    print("스킬 사용 - 기도하기");

    int possibleRange = maxMp - mp;
    int recoveryMp = 0;

    for (int i = 0; i < sec; i++) {
      int tmp = min(Random().nextInt(3), possibleRange - recoveryMp);
      recoveryMp += tmp;
      if (possibleRange - recoveryMp == 0) break;
    }

    changeMp(recoveryMp);
    return recoveryMp;
  }
  
}