import 'dart:math';



class Cleric {
  String name = '';
  int hp = 50;
  int maxHp = 50;
  int mp = 10;
  int maxMp = 10;

  // 생성자 : 인스턴스 만드는 방법을 제공하는 함수같은 놈
  Cleric(this.name, this.hp, this.mp); // this : 나

  // hp 회복
  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
    }
  }
// mp 회복
  int pray(int time) {
    // print('기도 시간을 입력하세요!');
    // int time = int.parse(stdin.readLineSync()!);
    /*
    Random().nextInt(3) 사용하여 0 ~2의 랜덤한 포인트 보정
     */
    int prayMp = Random().nextInt(3) + time;
    // mp를 힐받은 양까지 충전
    mp = prayMp +mp;
    // 최대 충전하는 mp 10을 넘지 않기 위한 삼향연산자문
    // mp 가 10이사이야? 그럼 10 아니면 충전함 mp로

    mp >= 10? mp =10 :mp;
    return prayMp; // 실제 회복된 Mp양
  }


}