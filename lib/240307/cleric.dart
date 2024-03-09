import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;

//  최대 hp, 최대 mp 공유
  static const int maxhp = 50; //최대 hp
  static const int maxmp = 10; //최대 mp

  Cleric(this.name, {this.hp = maxhp, this.mp = maxmp});

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
  // Cleric cleric = Cleric('아서스', hp: 40, mp: 5); //문제2-A
  // Cleric cleric = Cleric('아서스', hp: 35); //문제2-B
  Cleric cleric = Cleric('아서스'); //문제2-C

  // Cleric cleric2 = Cleric(); //문제2-E
  // 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없음, 이름없는 성직자 존재할 수 없음

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
