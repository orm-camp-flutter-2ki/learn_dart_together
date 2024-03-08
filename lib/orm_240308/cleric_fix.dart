import 'dart:math';

class Cleric {
  static final int maxHp = 50;
  static final int maxMp = 10;

  String name;
  int hp;
  int mp;


  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (mp <= 0) {
      print('MP가 부족합니다.');
    } else {
      mp -= 5;
      hp = maxHp;
    }
  }

  int pray(seconds) {
    int sec = seconds;
    int recovery = sec + Random().nextInt(3);
    int overRecovery = -(mp - maxMp);
    mp += recovery;
    if (mp >= maxMp) {
      recovery = overRecovery;
      mp = maxMp;
    }
    return recovery;
  }
}
void main() {
  Cleric cleric = Cleric('홍길동', 50, 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    cleric.selfAid();
    print('===== selfAid() 발동 ${i + 1} =====');
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 ${i + 1} =====');
    int recoveryMp = cleric.pray(5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}
