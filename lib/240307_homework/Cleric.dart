import 'dart:math';

void main() {
  Cleric cleric = Cleric('홍길동', 50, 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    print('===== selfAid() 발동 $i =====');
    cleric.selfAid();
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}

class Cleric {
  final hpMax = 50;
  final mpMax = 10;

  String name;
  int hp = 50;
  int mp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    int mpCost = 5;
    if (mp < mpCost) {
      print('마나가 부족합니다.스킬을 쓸 수 없습니다.');
    } else {
      mp -= mpCost;
      hp = hpMax;
    }
  }

  int pray(int sec) {
    int randomRecovery = sec + Random().nextInt(3);
    print('랜덤값+초:$randomRecovery');
    int possibleRange = mpMax - mp;
    int recoveryMp = min(randomRecovery, possibleRange);

    mp += recoveryMp;

    return recoveryMp;
  }
}
