import 'dart:math';

class Cleric { // class 생성
  String name; // field
  int hp;
  int mp;
  final int maxHp = 50; // field, 상수
  final int maxMp = 10;

  // 생성자 : 인스턴스를 만드는 것
  Cleric(this.name, this.hp, this.mp); // this. : 나의.name, 나의.hp

  // selfAid 동작 작성
  // mp 5를 소비하여 자신의 hp를 maxHp 까지 회복하는 동작
  //[edit] mp < aidHeal 으면 실행하지 않게...
  void selfAid() {
    int aidHeal = 5; //소비하는 mp

    if (mp < aidHeal) {
      print('MP가 부족해 실행이 취소됩니다. (현재 MP: $mp)');
    } else {
      mp -= aidHeal;
      hp = maxHp;
    }
  }

  // pray 동작 작성
  // mp 회복, mp는 maxMp를 넘지 못함
  // [edit] 힐량과 실제 회복된 양은 다르다
  // [edit] mp = 9 , 힐량이 6 일때 실제는 1만 회복이 된것
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
