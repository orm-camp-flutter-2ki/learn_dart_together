import 'dart:math';

class Cleric {
  /**
   * 커밋 메시지
   * 클레릭의 기본 속성을 정의했습니다.
   * 클레릭의 능력을 구현했습니다.
   * 클레릭을 문자열로 표현하는 기능을 추가했습니다.
   */
  String name;
  int hp;
  int mp;
  final int maxHp = 50;
  final int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = 50;
    } else {
      print('mp가 부족합니다. \nselfAid가 발동되지 않았습니다.');      
    }
    
  }
  // 컨벤션주의
  // 캡슐화, 은닉화
  // 
  int pray(int seconds) {
    int random = Random().nextInt(3); // 변수이름
    int mpRecovery = 0;

    //print('ran: $ran');
    mpRecovery += seconds + random;
    //print('mpRecover: $mpRecover');

    if ((mp + mpRecovery) >= maxMp) {
      mp = maxMp;
    } else {
      mp += mpRecovery;
    }
    return mpRecovery;
  }
}
