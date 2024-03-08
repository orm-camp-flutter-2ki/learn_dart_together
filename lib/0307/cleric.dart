import 'dart:math';

class Cleric {
  // class 생성
  String name; // field
  int hp;
  int mp;
  static final int maxHp = 50; // field, 상수, static(대신 top level로 작성해도 된다..)
  static final int maxMp = 10;

  Cleric(this.name, {this.hp = 50, this.mp = 10}); // 생성자
  //[Q] Cleric(this.name, {this.hp = maxHp, this.mp = maxMP}); 이렇게는 불가능할까...

  // selfAid 동작: mp 5를 소비하여 자신의 hp를 maxHp 까지 회복하는 동작
  void selfAid() {
    int aidHeal = 5; //소비 mp

    if (mp < aidHeal) {
      print('MP가 부족해 실행이 취소됩니다. (현재 MP: $mp)');
    } else {
      mp -= aidHeal;
      hp = maxHp;
    }
  }

  // pray 동작 = mp 회복, mp는 maxMp를 넘지 못한다.
  int pray(int second) {
    int prayHeal = Random().nextInt(3); // 회복량, 0 ~ 2까지 랜덤한 정수가 나온다
    int prayResult = second + prayHeal; // 전달받은 시간(초) + 0~2 만큼 회복한다

    int beforeMp = mp;

    mp += prayResult;

    if (mp >= maxMp) {
      mp = maxMp;
      return maxMp - beforeMp;
    } else {
      return prayResult;
    }
  }
}

void main() {
  Cleric cleric = Cleric('아서스', hp: 50, mp: 5);
  Cleric cleric2 = Cleric('아서스', hp: 35);
  Cleric cleric3 = Cleric('아서스');
  // Cleric cleric4 = Cleric(); // 이름 없는 경우 인스턴스화 할 수 없다.

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
