import 'dart:math';

class Cleric {

  late String name;
  late int hp;
  late int mp;
  final int maxHp = 50;
  final int maxMp = 10;

  Cleric(String name) {
    this.name = name;
    this.hp = this.maxHp;
    this.mp = this.maxMp;

    print('===== 클레릭 "${this.name}" 생성 =====');
    print('초기 HP: ${this.hp}, 초기 MP: ${this.mp}');
  }

  void selfAid(int cnt) {
    print('===== selfAid() 발동 $cnt =====');

    if (this.mp < 5) {
      print('HP 회복에 필요한 MP 5가 없습니다.');
      return;
    } else if (this.hp == this.maxHp) {
      print('HP가 이미 최댓값입니다.');
      return;
    }

    this.mp -= 5;
    this.hp = this.maxHp;

    print('${this.hp}, ${this.mp}');
  }

  void pray(int second, int cnt) {
    print('===== pray() 발동 $cnt =====');

    if (this.mp == this.maxMp) {
      print('MP가 이미 최댓값입니다.');
      return;
    }

    int recovery = second + Random().nextInt(3);
    this.mp = min(this.mp + recovery, this.maxMp);

    print('${this.hp}, ${this.mp}, 회복량: $recovery');
  }
}