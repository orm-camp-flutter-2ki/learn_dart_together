import 'dart:math';

void main() {
  Cleric cleric = Cleric('아서스', hp: 30, mp: 5);
  Cleric cleric2 = Cleric('홍길동', hp: 15);
  Cleric cleric3 = Cleric('홍김동', mp: 5);
  Cleric cleric4 = Cleric('홍동길');

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    print('===== selfAid() 발동 $i =====');
    cleric.selfAid();
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(second: 5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}

class Cleric {
  static const maxHp = 50;
  static const maxMp = 10;

  String name;
  int hp;
  int mp;

  Cleric(this.name, {this.hp = Cleric.maxHp, this.mp = Cleric.maxMp});

  void selfAid() {
    final int usedMp = 5;

    if (mp < usedMp) {
      print('MP가 부족합니다.');
    } else if (hp == Cleric.maxHp) {
      print('이미 체력이 가득 찼습니다.');
    } else {
      hp = Cleric.maxHp;
      mp -= usedMp;
      print('HP가 모두 회복되었습니다.');
    }
  }

  int pray({int second = 1}) {
    int chargedMp = second + Random().nextInt(3);

    if (mp + chargedMp > Cleric.maxMp) {
      chargedMp = Cleric.maxMp - mp;
    }

    mp += chargedMp;

    return chargedMp;
  }
}
