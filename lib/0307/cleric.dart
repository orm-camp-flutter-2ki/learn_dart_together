import 'dart:math';

class Cleric {
  // class 생성
  String name; // field
  int hp;
  int mp;

  // static final int maxHp = 50;
  // static final int maxMp = 10;
  static const int maxHp = 50; // final -> const
  static const int maxMp = 10;

  Cleric(this.name, {this.hp = maxHp, this.mp = maxMp}); // 생성자 룰
  // Cleric(this.name, {this.hp = 50, this.mp = 10}); // 생성자
  // [Q] Cleric(this.name, {this.hp = maxHp, this.mp = maxMP}); 이렇게는 불가능할까...
  // 팀원 답변: final 말고 const로 하면 된다. 하지만 이유는 모른다..
  // [Q] 그러면 왜 final은 안되고 const는 되는걸까....
/*
 * [선생님 Answer]
 * static 키워드가 붙은 변수는 다른 것보다 먼저 메모리에 올라간다, 이유는 공유자원이기 때문에.
 * 생성자 룰에 기본 값으로 주기 위해서는 .. 컴파일에 이미 값이 결정 되어 있어야 한다.
 * final은 런타임에 결정되어서 안된다. const는 컴파일 타임에 결정 되어서 된다.
 * 런타임은 버튼 눌렀을 때 되는 것이고, 런타임 전에 컴파일이 있고, 컴파일은 코드 작성 중에 일어난다
 **/

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

  // test 코드 추가
  print("${cleric.name}, ${cleric.hp}, ${cleric.mp}");
  print("${cleric2.name}, ${cleric2.hp}, ${cleric2.mp}");
  print("${cleric3.name}, ${cleric3.hp}, ${cleric.mp}");

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
