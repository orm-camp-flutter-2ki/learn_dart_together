import 'dart:math';

class Cleric {
  String name;

  int HP;
  int MP;

  final int maxHP = 50;
  final int maxMP = 10;

  Cleric(
    this.name,
    this.HP,
    this.MP,
  );

  void selfAid() {
    if (MP >= 5) {
      HP = maxHP;
      MP -= 5;
    }
  }

  int pray([int seconds = 1]) {
    // 1초에 한번씩

    int recoveryMp = seconds + Random().nextInt(3);
    // 1초 + 0~2

    if (this.MP + recoveryMp > this.maxMP) {
      // 현재 MP에서 추가값이 최대치를 초과하는지

      recoveryMp = this.maxMP - this.MP;
      // 초과하면 추가값을 최대치에서 현재값을 빼서 조정
    }

    this.MP += recoveryMp;
    // 현재값을 추가값만큼 증가

    print('$name는 기도하기를 사용했다! MP가 $recoveryMp 만큼 회복되었다!');

    return recoveryMp;
    // 반환
  }
}

void main() {
  Cleric cleric = Cleric('법사', 50, 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.HP}, ${cleric.MP}');

  for (int i = 0; i < 3; i++) {
    cleric.selfAid();
    print('===== selfAid() 발동 $i =====');
    print('${cleric.HP}, ${cleric.MP}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(5);
    print('${cleric.HP}, ${cleric.MP}, 회복량: $recoveryMp');
  }
}
