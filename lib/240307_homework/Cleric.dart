/* 과제 1.
  현실세계의 성직자 “클레릭" 를 표현하는 클래스 Cleric 를 작성 하시오.
  feat: 클레릭 클래스 추가
  - 클레릭의 기본 속성을 정의했습니다.
  - 클레릭의 능력을 구현했습니다.
  - 클레릭을 문자열로 표현하는 기능을 추가했습니다.
 */

import 'dart:math';

void main() {
  Cleric cleric = Cleric('홍길동', 50, 10);

  print('===== 클래릭 생성 =====');
  print('${cleric.hp}, ${cleric.mp}');

  for (int i = 0; i < 3; i++) {
    print('===== selfAid() 발동 $i =====');
    cleric.selfAid();
    print('${cleric.hp}, ${cleric.mp}');
  }

  for (int i = 0; i < 3; i++) {
    print('===== pray() 발동 $i =====');
    int recoveryMp = cleric.pray(5);
    print('${cleric.hp}, ${cleric.mp}, 회복량: $recoveryMp');
  }
}


class Cleric {
  String name;
  int hp = 50;
  final hpMax = 50;
  int mp = 10;
  final mpMax = 10;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (mp < 5) {
      print('마나가 없습니다.스킬을 쓸 수 없습니다.');
    } else {
      mp -= 5;
      hp = hpMax;
    }
  }

  int pray(int sec) {
    int healedMP = 0;
    //sec 만큼 반복
    for (int i = 1; i <= sec; i++) {
      //mp가 최대가 아닐때
      if (mp < mpMax) {
        int randomRecovery = Random().nextInt(3);
        if ((randomRecovery + mp) >= mpMax) {
          int mpOver = (randomRecovery + mp)- mpMax;
          healedMP += randomRecovery - mpOver;
          mp += randomRecovery - mpOver;
          break;
        } else {
          healedMP += randomRecovery;
          //추가
          mp += randomRecovery;
        }
      }
      //mp가 최대일때
      else {
        print('마나가 다 찼습니다.');
        break;
      }
    }//for
    return healedMP;
  }
}
