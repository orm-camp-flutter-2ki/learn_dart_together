import 'dart:math';

class Cleric {
  // class 생성
  String name; // field
  int hp;
  int mp;
  static const int maxHp = 50; // 상수 + static
  static const int maxMp = 10;

  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp}); // 생성자

  // selfAid 동작: mp 5를 소비하여 자신의 hp를 maxHp 까지 회복하는 동작
  int selfAid() {
    int aidHeal = 5; //소비 mp
    if (mp < aidHeal) {
      print('MP가 부족해 실행이 취소됩니다.');
      return mp;
    }
    mp -= aidHeal;
    hp = maxHp;
    print('MP $aidHeal 소모, HP를 최대로 회복했습니다.');
    return mp;
  }

  // pray 동작: mp 회복, mp는 maxMp를 넘지 못한다.
  int pray(int second) {
    if (mp >= maxMp) {
      print("이미 mp가 가득 차있습니다. 스킬 발동이 취소 됩니다.");
      mp = maxMp;
      return 0;
    }

    int prayHeal = Random().nextInt(3); // 회복량, 0 ~ 2까지 랜덤한 정수가 나온다
    int prayResult = second + prayHeal; // 전달받은 시간(초) + 0~2 만큼 회복한다

    if (mp + prayResult > maxMp) {
      prayResult = maxMp - mp;
    }

    mp += prayResult;

    return prayResult;
  }
}

void main() {
  Cleric cleric = Cleric('아서스', hp: 50, mp: 10);
  Cleric cleric2 = Cleric('아서스', hp: 35);
  Cleric cleric3 = Cleric('아서스');
  // Cleric cleric4 = Cleric(); // 이름 없는 경우 인스턴스화 할 수 없다.

  // test 코드 추가
  print("${cleric.name}, ${cleric.hp}, ${cleric.mp}");
  print("${cleric2.name}, ${cleric2.hp}, ${cleric2.mp}");
  print("${cleric3.name}, ${cleric3.hp}, ${cleric.mp}");
  print('');

  print('===== 클래릭 생성 =====');
  print('[캐릭터 생성] ${cleric.name}, ${cleric.hp}, ${cleric.mp}\n');

  for (int i = 0; i < 3; i++) {
    print('===== selfAid() 발동 $i =====');
    cleric.selfAid();
    print('[현재 상태] HP:${cleric.hp}, MP:${cleric.mp}\n');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(5);
    print('회복량: $recoveryMp');
    print('[현재 상태] HP:${cleric.hp}, MP:${cleric.mp}\n');
  }
}
