import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;

  Cleric(this.name, this.hp, this.mp);

  final int maxhp = 50;
  final int maxmp = 10;

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxhp;
    } else {
      mp = mp;
      hp = hp;
    }
  }

  int pray(int t) {
    int mp1 = mp;
    int mp2;
    mp2 = mp + t + Random().nextInt(3);

    if (mp2 >= maxmp) {
      mp2 = maxmp;
    } else {
      mp2 = mp2;
    }
    mp = mp2;

    int x = mp2 - mp1;

    return x;
  }
}

void main() {
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
    int recoveryMp = cleric.pray(5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}
