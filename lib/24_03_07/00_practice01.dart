void main() {
  Cleric cleric = Cleric('홍길동', 100, 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    cleric.selfAid();
    print('===== selfAid() 발동 $i =====');
    print('${cleric.hp}, ${cleric.mp}');
  }

  // for (int i = 0; i < 3; i++) {
  //   print('===== pray() 발동 $i =====');
  //   int recoveryMp = cleric.pray(5);
  //   print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  // }
}

class Cleric {
  String name;

  int hp;
  final int maxHp = 50;
  int mp;
  final int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (mp == 10) {
      mp = maxMp - 5;
      hp = maxHp;
    } else if (5 <= mp && mp < 10) {
      mp -= 5;
      hp = maxHp;
    } else if (mp < 5) {
      print('MP가 부족하여 사용할 수 없습니다.');
    }
  }

  void pray() {}
}
