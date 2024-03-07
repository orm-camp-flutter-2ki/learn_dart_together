import 'dart:math';

class Cleric {
  String name;
  int hp;
  int mp;

  final int maxHp = 50;
  final int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (hp > 5) {
      mp -= 5;
      hp = maxHp;
    }
    print('현재 HP : $hp , 현재 MP : $mp');

  }

  int pray(int praySec) {
    int healAmount = 0;
    int mpWithHealAmount;
    int randomPoint = Random().nextInt(3);

    healAmount = randomPoint + praySec;

    mpWithHealAmount = mp + healAmount;

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


  for(int i = 0; i<2; i++) {
    print('======= selfAid() $i번 발동  =======');
    // print('현재 HP는 :${cleric.selfAid()}');
    cleric.selfAid();
  }
  print('');

  for(int i = 0; i<3; i++) {
    print('======= pray() $i번 발동  =======');
    print('현재 HP : ${cleric.hp} , 현재 MP : ${cleric.mp} , 회복량 : ${cleric.pray(3)}');
  }

}
