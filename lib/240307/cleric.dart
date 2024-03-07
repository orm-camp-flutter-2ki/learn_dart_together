import 'dart:math';

class Cleric {
  final int maxHp = 50;
  final int maxMp = 10;

  String name;
  int hp = 50;
  int mp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    mp -= 5;
    hp = maxHp;
  }

  int pray(int time) {
    int randomRecoverMp = Random().nextInt(2);
    return time + randomRecoverMp;
  }
}