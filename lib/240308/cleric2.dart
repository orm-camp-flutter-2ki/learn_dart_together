import 'dart:math';

void main() {

 final Cleric athers = Cleric(  '아서스', hp: 40, mp: 5);
 final Cleric athers2 = Cleric('아서스', hp: 35);
 final Cleric athers3 = Cleric(  '아서스');

  // Cleric cleric = Cleric( name: '홍길동',hp:50, mp: 10);
  print('===== 클래릭 생성 =====');
  print('${athers.hp}, ${athers.mp}');

  for (int i = 0; i < 3; i++) {
    athers.selfAid();
    print('===== selfAid() 발동 $i =====');
    print('${athers.hp}, ${athers.mp}');
  }

 for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = athers.pray(5);
    print('${athers.hp}, ${athers.mp}, 회복량: $recoveryMp');
  }
}

class Cleric {
 static const  maxMp = 10;
 static const  maxHp = 50;
  String name;

  int hp = 50;
  int mp = 10;


  // 생성자 : 인스턴스 만드는 방법을 제공하는 함수같은 놈
 // this.hp = 50 , this.mp =10 사용하면 안돼는이유?
 //27_전종현 — 오늘 오전 9:31
 // 클래릭의 최대 체력을 바꿀려면 하나하나 찾아서 50이라는 숫자를 수정해야 합니다
 // 다른 사람이 코드를 볼때, 50이 무슨 의미인지도 모릅니다
  Cleric( this.name,{ this.hp = maxHp , this.mp =maxMp}); // this : 나

  // hp 회복
  void selfAid() {
    if (mp < 5) {
      print('mp가 부족합니다');
    } else {
      // mp -= 5; 사용가능
      mp = mp - 5;
      hp = maxHp;
    }
  }

  // mp 회복
  int pray(int time) {
    // print('기도 시간을 입력하세요!');
    // int time = int.parse(stdin.readLineSync()!);
    //Random().nextInt(3) 사용하여 0 ~2의 랜덤한 포인트 보정

    int prayMp = Random().nextInt(3) + time;
    // mp를 힐받은 양까지 충전
    mp = prayMp + mp;
    // 최대 충전하는 mp 10을 넘지 않기 위한 삼향연산자문
    // mp 가 10이사이야? 그럼 10 아니면 충전함 mp로

    // mp >= 10 ? mp = 10 : mp;
    mp = mp >= 10 ? 10 : mp;
    return prayMp; // 실제 회복된 Mp양
  }
}
