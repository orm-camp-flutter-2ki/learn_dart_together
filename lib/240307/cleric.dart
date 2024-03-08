import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;

//  최대 hp, 최대 mp 공유
  static const int maxhp = 50; //최대 hp
  static const int maxmp = 10; //최대 mp

  Cleric({required this.name, this.hp = maxhp, this.mp = maxmp});

  void selfAid() {
    if (mp < 5) {
      print('mp가 부족합니다!');
    } else {
      mp = mp - 5;
      hp = maxhp;
    }
  }

  int pray(int second) {
    int heal = second + Random().nextInt(3);

    int healPoint = 0;
    if (mp + heal > 10) {
      healPoint = 10 - mp;
      mp = 10;
    } else {
      mp = mp + heal;
      healPoint = heal;
    }
    return healPoint;
  }
}

void main() {
  Cleric cleric = Cleric(name: '아서스', hp: 40, mp: 5); //문제2-A

  print('===== 클래릭 생성 =====');
  print('${cleric.name}, ${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    cleric.selfAid();
    print('===== selfAid() 발동 $i =====');
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}
