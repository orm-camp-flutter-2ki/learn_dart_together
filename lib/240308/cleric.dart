import 'dart:math';

// 성직자
class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  int hp;
  int mp;
  int spendMp = 5;
  String name;

  Cleric(this.name, this.hp, this.mp);

  // '셀프 에이드'
  void selfAid() {
    if( mp < spendMp ) {
      print("mp가 부족합니다.");

    } else {
      mp = mp - spendMp;
      hp = maxHp;
    }
  }

  // 불변
  // '기도하기'
  int pray({int second = 1}) {
    // 회복량 = 기도한 시간(초)에 랜덤하게 0~2 포인트의 보정을 한 양
    final int heal = second + Random().nextInt(3);

    int healPoint = 0;

    // 최대 MP 보다 더 회복은 불가능
    if( mp + heal > maxMp ) {
      healPoint = maxMp - mp;
      mp = maxMp;

    } else {
      mp = mp + heal;
      healPoint = heal;
    }

    // 실제로 회복된 MP 양
    return healPoint;
  }
}

void main() {
  // stack        // heap 할당
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
    int recoveryMp = cleric.pray();
    int recoveryMp2 = cleric.pray(second: 1);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}
