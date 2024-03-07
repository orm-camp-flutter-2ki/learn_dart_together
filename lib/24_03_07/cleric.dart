import 'dart:math';

class Cleric {
  String name;
  int hp = 50;
  final int maxHp = 50;
  int mp = 10;
  final int maxMp = 10;

  Cleric(this.name);

  void selfAid() {
    if (mp > 4) {
      mp -= 5;
      hp = maxHp;
    } else {
      print("mp가 부족 합니다.");
    }

    print('$mp, $hp');
  }

  int pray(int time) {
    int totalRecoveredMana = 0;

    for (int i = 0; i < time; i++) {
      int psRecoveredMana = Random().nextInt(2); // per second recoveredMana
      mp += psRecoveredMana;
      totalRecoveredMana += psRecoveredMana;
    }

    return totalRecoveredMana;
  }
}

void main() {
  Cleric newCleric = Cleric('홍길동');

  newCleric.selfAid();
  newCleric.selfAid();
  print(newCleric.pray(3));
}
