import 'dart:math';

class Cleric {
  static const int maximumHP = 50;
  static const int maximumMP = 10;

  String name;
  int hp;
  int mp;

  Cleric(this.name, {this.hp = Cleric.maximumHP, this.mp = Cleric.maximumMP});

  void selfAid() {
    mp -= 5;
    hp = maximumHP;
  }

  int pray(int second) {
    int healedMp = Random().nextInt(3) + second;

    if (healedMp > maximumMP - mp) {
      healedMp = maximumMP - mp;
      mp = maximumMP;
    } else {
      mp += healedMp;
    }

    return healedMp;
  }
}

void main() {
  Cleric firstCleric = Cleric("아서스");
  Cleric secondCleric = Cleric("아서스", hp: 20, mp: 3);
  Cleric thirdCleric = Cleric("아서스", hp: 50);
}
