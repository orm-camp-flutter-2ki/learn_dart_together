import 'dart:math';

// 성직자
class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  int hp;
  int mp;
  int spendMp = 5;
  String name;

  Cleric({required this.name, this.hp = Cleric.maxHp, this.mp = Cleric.maxMp});

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
  // A
  Cleric arthas = Cleric(name: '아서스', hp: 40, mp: 5);
  print('===== 아서스 클래릭 생성 =====');
  print('클래릭 이름 : ${arthas.name}, '
        '현재 HP : ${arthas.hp}, '
        '현재 MP : ${arthas.mp} \n'
  );
}
