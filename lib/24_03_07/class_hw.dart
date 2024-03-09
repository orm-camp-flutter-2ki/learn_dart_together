import 'dart:math';

class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name = '';
  int hp = maxHp;
  int mp = maxMp;

  Cleric(this.name, int hp, int mp) {
    this.hp = min(maxHp, hp);
    this.mp = min(maxMp, mp);
  }

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

    if (changeMp(-5)) {
      changeHp(maxHp);
    }
  }

  int pray(int sec) {
    print("스킬 사용 - 기도하기");

    int possibleRange = maxMp - mp;
    int recoveryMp = min(sec, possibleRange);
    recoveryMp += min(Random().nextInt(3), possibleRange - recoveryMp);
    changeMp(recoveryMp);
    return recoveryMp;
  }
}
