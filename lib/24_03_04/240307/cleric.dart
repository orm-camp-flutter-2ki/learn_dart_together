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

  int mpRecover = 0;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
    }else{
      print('mp가 부족합니다. \nselfAid가 발동되지 않았습니다.');
    }
    hp = 50;
  }

  int pray(int seconds) {    

    int ran = Random().nextInt(3);
    int mpRecover = 0;
    //print('ran: $ran');
    mpRecover += seconds+ran;    
    //print('mpRecover: $mpRecover');
    
    if((mp+mpRecover) >= 10){
      mp = 10;
    }else{
      mp += mpRecover;
    }
    return mpRecover;
  }
}
