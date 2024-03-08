import 'dart:math';
import 'dart:io';

// 클래스
class Cleric {

  // 필드
  String name;
  int hp;
  int mp;
  final int maxHp;
  final int maxMp;

  // 생성자
  Cleric(
      {this.name = '',
      this.hp = 50,
      this.mp = 10,
      this.maxHp = 50,
      this.maxMp = 10});

  // 메소드(*셀프 에이드)
  void selfAid() {
    print('\n=====스킬 사용 : 셀프 에이드=====');
    if (mp < 5) {
      print('(MP가 부족하여 셀프 에이드를 사용할 수 없습니다.)');
      return;
    }

    stdout.write('사용 전 HP :$hp -> ');
    hp = maxHp;
    print('사용 후 HP :$hp (최대 HP로 회복했습니다.)');

    stdout.write('사용 전 MP :$mp -> ');
    mp -= 5;
    print('사용 후 MP :$mp (MP가 5 감소했습니다.)');
  }

  // 메소드(*기도하기)
  int pray(int praySec) {
    Random random = Random();

    print('\n=====스킬 사용 : 기도하기=====');
    int recoverMp = praySec + random.nextInt(3);
    print('($praySec 초 기도하였습니다. MP를 $recoverMp 회복합니다.)');

    if ((mp + recoverMp) < maxMp) {
      stdout.write('사용 전 MP :$mp -> ');
      mp += recoverMp;
      print('사용 후 MP :$mp');
      return recoverMp;
    } else {
      stdout.write('사용 전 MP :$mp -> ');
      mp = maxMp;
      print('사용 후 MP :$mp (최대 MP를 초과하여 회복되지 않습니다.)');
      return maxMp - mp;
    }
  }
}

// 결과 출력
void main() {
  print('===== 클래릭 생성 ======');
  Cleric cleric = Cleric();
  print('초기 HP : ${cleric.hp}, 초기 MP : ${cleric.mp}');

  cleric.selfAid();
  cleric.selfAid();
  cleric.selfAid();

  cleric.pray(1);
  cleric.pray(2);
  cleric.pray(3);
  cleric.pray(1);
}
