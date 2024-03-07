import 'dart:math';

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

class Cleric {
  String name;
  int hp;
  int mp;
  final int maxHp = 50;
  final int maxMp = 10;

  int recoveryMp = 0;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (mp == maxMp) {
      mp = maxMp - 5;
      hp = maxHp;
    } else if (5 <= mp && mp < maxMp) {
      mp -= 5;
      hp = maxHp;
    } else if (mp < 5) {
      print('MP가 부족합니다.');
    }
  }

  int pray(int second) {
    int recoveryMp = 0;

    if (mp < maxMp) {
      recoveryMp += second + Random().nextInt(3);

      // if문
      if (mp + recoveryMp > 10) {
        mp = maxMp;
      } else if (mp + recoveryMp <= 10) {
        mp = mp + recoveryMp;
      }
      // if 문을 삼항 연산자로
      // mp + recoveryMp > 10 ? mp = maxMp : mp += recoveryMp;
      //
    } else if (mp >= maxMp) {
      print('이미 MP가 가득 찼습니다.');
      mp = maxMp;
    }
    return recoveryMp;
  }
}
