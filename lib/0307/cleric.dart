import 'dart:math';

const int maxMp = 10;
const int maxHp = 50;

class Cleric {

  String name;
  late int hp;
  late int mp;

  Cleric({required this.name, this.hp = maxHp, this.mp = maxMp}) {
      print('===== 클레릭 "$name" 생성 =====');
      print('초기 HP: $hp, 초기 MP: $mp');
  }

  void selfAid(int cnt) {
    print('===== selfAid() 발동 $cnt =====');

    if (mp < 5) {
      print('HP 회복에 필요한 MP 5가 없습니다.');
      return;
    } else if (hp == maxHp) {
      print('HP가 이미 최댓값입니다.');
      return;
    }

    mp -= 5;
    hp = maxHp;

    print('$hp, $mp');
  }

  void pray(int second, int cnt) {
    print('===== pray() 발동 $cnt =====');

    if (mp == maxMp) {
      print('MP가 이미 최댓값입니다.');
      return;
    }

    int recovery = second + Random().nextInt(3);
    mp = min(mp + recovery, maxMp);

    print('$hp, $mp, 회복량: $recovery');
  }
}