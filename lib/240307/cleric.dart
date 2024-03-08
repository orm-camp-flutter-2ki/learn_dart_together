import 'dart:io';
import 'dart:math';

class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name;
  int mp;
  int hp;

  Cleric(this.name, {this.hp = Cleric.maxHp, this.mp = Cleric.maxMp});

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = Cleric.maxHp;
    }
  }

  int pray(int time) {
    // print('기도 시간을 입력하시오.');
    // int time = int.parse(stdin.readLineSync()!);
    int prayMp = Random().nextInt(3) + time;
    mp = prayMp + mp;
    mp = mp >= 10 ? 10 : mp;
    return prayMp;
  }
}

void main() {
  Cleric cleric = Cleric('홍길동');

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

  final a = Cleric('아서스', hp: 40, mp: 5);
  print('${a.name} ${a.hp} ${a.mp}');
  final b = Cleric('아서스', hp: 35);
  print('${b.name} ${b.hp} ${b.mp}');
  final c = Cleric('아서스');
  print('${c.name} ${c.hp} ${c.mp}');
}
