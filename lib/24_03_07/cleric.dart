import 'dart:math';

void main() {
  Cleric().pray(3);
}

class Cleric {
  String? name;

  int hp = 50;
  int mp = 10;

  final int maxHp = 50;
  final int maxMp = 10;

  void selfAid() {
    if (hp < 50) {
      mp -= 5;
      hp == maxHp;
    }
  }

  int pray(int praySec) {
    int healAmount;
    int mpWithHealAmount;
    int randomPoint = Random().nextInt(2);

    healAmount = randomPoint + praySec;

    mpWithHealAmount = mp + healAmount;

    if(mpWithHealAmount < maxMp){
      mp += healAmount;
    }
    return healAmount;
  }
}
