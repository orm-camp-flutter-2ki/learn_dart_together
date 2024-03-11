import 'dart:math';

class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name;
  int hp;
  int mp;

  // Cleric(this.name,{ this.hp, this.mp}) {
  //   hp ??= maxHp;
  //   mp ??= maxMp;
  // }
  Cleric(this.name, { this.hp = maxHp, this.mp = maxMp});


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

  Cleric cleric = Cleric('mandy');

  print('===== 클래릭 생성 =====');
  print('${cleric.name}, ${cleric.hp}, ${cleric.mp}');

  // for (int i = 0; i < 3; i++) {
  //   cleric.selfAid();
  //   print('===== selfAid() 발동 ${i + 1} =====');
  //   print('${cleric.hp}, ${cleric.mp}');
  // }
  //
  // for (int i = 0; i < 3; i++) {
  //   print('===== pray() 발동 ${i + 1} =====');
  //   int recoveryMp = cleric.pray(5);
  //   print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  // }
}