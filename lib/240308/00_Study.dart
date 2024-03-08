import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;
  final int maxHp = 50;
  final int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

  int spendMp = 5;

  void selfAid() {
    if (mp < spendMp) {
      print("mp가 부족합니다");
    } else {
      mp = mp - spendMp;
      hp = maxHp;
    }
  }

  // 불변
  int pray({int second = 1}) {
    final int heal = second + Random().nextInt(3);

    int healPoint = 0;
    if (mp + heal > maxMp) {
      healPoint = maxMp - mp;
      mp = maxMp;
    } else {
      mp = mp + heal;
      healPoint = heal;
    }
    return healPoint;
  }
}

void main() {
  // stack        // heap 할당
  Cleric cleric = Cleric('홍길동', 50, 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    cleric.selfAid();
    print('===== selfAid() 발동 $i =====');
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray();
    int recoveryMp2 = cleric.pray(second: 1);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}