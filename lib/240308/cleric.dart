import 'dart:math';

class Cleric {
  static const int maximumHp = 50; // 최대 HP
  static const int maximumMp = 10; // 최대 MP

  String name; // 이름
  int hp; // HP
  int mp; // MP

  Cleric(this.name, {this.hp = Cleric.maximumHp, this.mp = Cleric.maximumMp});

  void selfAid() {
    mp -= 5;
    hp = maximumHp;
  }

  int pray(int second) {
    int healedMp = Random().nextInt(3) + second;

    if (healedMp > maximumMp - mp) {
      healedMp = maximumMp - mp;
      mp = maximumMp;
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
