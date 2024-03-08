import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;
  static final int maxHp = 50;
  static final int maxMp = 10;

  //생성자 오버로딩 추가
  Cleric(this.name, {this.hp = 50, this.mp = 10});

  int spendMp = 5;

  void selfAid() {
    if (mp < spendMp) {
      print("mp가 부족합니다");
    } else {
      mp = mp - spendMp;
      hp = maxHp;
    }
  }

  int pray(int second) {
    int heal = second + Random().nextInt(3);

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
/*  Cleric cleric = Cleric('홍길동', 50, 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    cleric.selfAid();
    print('===== selfAid() 발동 $i =====');
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');*/
  Cleric cleric = Cleric('아서스', hp: 40, mp: 5);
  Cleric cleric1 = Cleric('아서스', hp: 35);
  Cleric cleric2 = Cleric('홍길동');

  print("${cleric1.hp} ${cleric1.mp}");
  print("${cleric2.hp} ${cleric2.mp}");

  print("Rmx");
}
