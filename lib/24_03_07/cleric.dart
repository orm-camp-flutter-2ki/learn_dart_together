import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;

  static const int maxHp = 50;
  static const int maxMp = 10;
  // static const givenName = '아서스';

  Cleric(this.name, this.hp, this.mp);
  // Cleric({required this.name, this.hp = 40, this.mp = 5});

  // final hero1 = Cleric(name: givenName, hp: 40, mp: 5);
  // final hero2 = Cleric(name: givenName, hp: 35, mp:maxMp);
  // final hero3 = Cleric(name: givenName, hp: maxHp);



  void selfAid() {
    if (hp > 5 || mp > 0) {
      mp -= 5;
      hp = maxHp;
    } else {
      print('MP가 부족합니다.');
    }
    print('현재 HP : $hp , 현재 MP : $mp');
  }

  int pray(int praySec) {
    int healAmount = 0;
    int mpWithHealAmount;
    int randomPoint = Random().nextInt(3);

    healAmount = randomPoint + praySec; // 랜덤포인트와 기도시간의 합

    mpWithHealAmount = mp + healAmount; // 현재 mp와 회복양의 합

    if (mpWithHealAmount < maxMp) {
      mp += healAmount;
    }
    return healAmount;
  }
}

void main() {
  Cleric cleric = Cleric('홍길동', 50, 10);

  print('======= 크레릭 생성 =======');
  print('초기 HP : ${cleric.hp} , 초기 MP : ${cleric.mp}');
  print('');

  for (int i = 1; i < 3; i++) {
    print('======= selfAid() $i번 발동  =======');
    // print('현재 HP는 :${cleric.selfAid()}');
    cleric.selfAid();
  }
  print('');

  for (int i = 1; i < 4; i++) {
    print('======= pray() $i번 발동  =======');
    print(
        '현재 HP : ${cleric.hp} , 현재 MP : ${cleric.mp} , 회복량 : ${cleric.pray(3)}');
  }
}
