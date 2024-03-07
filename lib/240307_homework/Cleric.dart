/* 과제 1.
  현실세계의 성직자 “클레릭" 를 표현하는 클래스 Cleric 를 작성 하시오.
  feat: 클레릭 클래스 추가
  - 클레릭의 기본 속성을 정의했습니다.
  - 클레릭의 능력을 구현했습니다.
  - 클레릭을 문자열로 표현하는 기능을 추가했습니다.
 */

import 'dart:math';
void main(){
  print(Random().nextInt(3) + 5);
}
class Cleric {
  String name;
  int hp = 50;
  final hpMax = 50;
  int mp = 10;
  final mpMax = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid(){
    mp - 5;
    hp = hpMax;
  }
  void pray(int sec){
    if(mp == mpMax){} else {
      var intValue = Random().nextInt(3) + sec; // Value is >= 0 and < 10.

    }

  }
}