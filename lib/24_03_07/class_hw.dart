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

}