import 'dart:math';

class Cleric {
  final int maxHp = 50;
  final int maxMp = 10;

  String name;
  int hp = 50;
  int mp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    int maxiumSpendMp = 5; // selfAid에 사용하는 mp의 양

    // maxiumSpendMp 보다 mp가 적을 경우 남아있는 mp 만큼 회복
    if(mp < maxiumSpendMp) {
      hp + mp > maxHp ? hp = maxHp : hp += mp;
      mp = 0;
    } else {
      mp -= maxiumSpendMp;
      hp = maxHp;
    }
  }

  int pray(int time) {
    int randomRecoverMp = Random().nextInt(2);
    return time + randomRecoverMp;
  }
}