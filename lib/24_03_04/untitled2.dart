//PR 내용에는 자신이 과제를 어떻게 수행했는지, 곤란한 점, 해결못 한 점, 리뷰 받고 싶은 내용 등에 대한 간단한 설명을 작성합니다.
//모든 PR에는 모든 학생이 리뷰에 참여할 수 있습니다.
import 'dart:math';
const String version = '0.0.1';

void main() {
  Cleric cleric = Cleric('클레릭');
  cleric.newCleric();
  cleric.selfAid();
  cleric.selfAid();
  cleric.pray();
  cleric.pray();
}

class Cleric {
  String name;
  int hp;
  final int maxHp = 50;
  int mp;
  final int maxMp = 10;

// 생성자
  Cleric(String name):
        name = name,
        hp = 50,
        mp = 10;
  void newCleric(){
    print('=====$name 생성=====');
    print('현재 HP: $hp / 최대 HP: $maxHp');
    print('남은 MP: $mp / 최대 MP: $maxMp');
  }
  void selfAid() {
    int heal = Random().nextInt(50);   //hp를 회복할 랜덤 숫자
    if (mp >= 5) {
      print('\n=====selfAId()발동=====');
      print("HP$heal 회복합니다.");
      hp = heal;
      mp -= 5;    // MP 소비
      print('현재 HP: $hp / 최대 HP: $maxHp');
      print('남은 MP: $mp / 최대 MP: $maxMp');
    } else {
      print('MP가 부족합니다');       //mp가 없을 시 출력
    }
  }

  void pray(){
    print('\n=====pray()발동=====');
    int mpHeal = Random().nextInt(3);  //mp를 회복할 랜덤 숫자

    mp += mpHeal;
    print('Mp를 $mpHeal+ 회복합니다.');
    print('현재 HP: $hp / 최대 HP: $maxHp');
    print('남은 MP: $mp / 최대 MP: $maxMp');
  }

}


