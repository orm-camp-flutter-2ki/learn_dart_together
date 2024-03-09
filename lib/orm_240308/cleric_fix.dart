import 'dart:math';

class Cleric {
  static final int maxHp = 50;
  static final int maxMp = 10;

  String name;
  int? hp;
  int? mp;

  Cleric({this.name = '아서스', this.hp, this.mp}) {
    this.hp ??= maxHp;
    this.mp ??= maxMp;
  }

  void selfAid() {
    if (mp != null && mp! <= 0) {
      print('MP가 부족합니다.');
    } else {
      mp = (mp != null) ? mp! - 5 : null;
      hp = maxHp;
    }
  }

  int pray(int seconds) {
    int sec = seconds;
    int recovery = sec + Random().nextInt(3);
    int? currentMp = mp;
    if (currentMp != null) {
      int overRecovery = (currentMp + recovery) - maxMp;
      mp = (currentMp + recovery <= maxMp) ? currentMp + recovery : maxMp;
      recovery -= (currentMp + recovery > maxMp) ? overRecovery : 0;
    }
    return recovery;
  }
}

void main() {
  Cleric cleric = Cleric(name:'김덕배', hp: 30, mp: 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.name}, ${cleric.hp}, ${cleric.mp}');

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