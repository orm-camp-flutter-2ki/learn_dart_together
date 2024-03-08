// import 'dart:math';

class Cleric {
  static final int maxHp = 50;
  static final int maxMp = 10;

  String name;
  int? hp;

  int? mp;

  Cleric({this.name = '아서스', this.hp, this.mp});

// void selfAid() {
//   if (mp <= 0) {
//     print('MP가 부족합니다.');
//   } else {
//     mp -= 5;
//     hp = maxHp;
//   }
// }
//
// int pray(seconds) {
//   int sec = seconds;
//   int recovery = sec + Random().nextInt(3);
//   int overRecovery = -(mp - maxMp);
//   mp += recovery;
//   if (mp >= maxMp) {
//     recovery = overRecovery;
//     mp = maxMp;
//   }
//   return recovery;
// }
}

void main() {
  Cleric cleric = Cleric(name: '아서스');
  if (cleric.hp == null) {
    cleric.hp = Cleric.maxHp;
  } else if (cleric.mp == null) {
    cleric.mp = Cleric.maxMp;
  } else if (cleric.hp == null && cleric.mp == null) {
    cleric.mp = Cleric.maxMp;
    cleric.hp = Cleric.maxHp;
  }
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
