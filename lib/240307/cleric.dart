import 'dart:io';
import 'dart:math';

class Cleric {
  String name;
  int hp = 50;

  int maxHp = 50;

  int mp = 10;

  int maxMp = 10;

  Cleric(
    this.name,
    this.hp,
    this.mp,
  );

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
    }
  }

  int pray(int time) {
    // print('기도 시간을 입력하시오.');
    // int time = int.parse(stdin.readLineSync()!);
    int prayMp = Random().nextInt(3) + time;
    mp = prayMp + mp;
    mp >= 10 ? mp = 10 : mp;
    return prayMp;
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
