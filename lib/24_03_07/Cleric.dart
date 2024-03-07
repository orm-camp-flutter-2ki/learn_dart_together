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
    }
    hp = maxHp;
  }

  int pray(int second) {
    int realMp = 0;
    int randomNumber = Random().nextInt(3);
    realMp += (second+randomNumber);
    if((mp + realMp) <= maxMp){
      mp += realMp;
      return realMp;
    }
    else{
      int excess = (realMp + mp) - maxMp;
      realMp -= excess;
      mp += realMp;
      return realMp;
    }
  }
}
