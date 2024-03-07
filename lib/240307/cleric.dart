import 'dart:math';

class Cleric {
  final int maxHp = 50;
  final int maxMp = 10;

  String name;
  int hp = 50;
  int mp = 10;

  Cleric(this.name);

  void selfAid() {
    mp -= 5;
    hp = maxHp;

    print('$name (은)는 자가치유를 시전합니다.');
    showHp();
  }

  int pray(int time) {
    int randomMpAmount = Random().nextInt(2);
    
    print('$name (은)는 기도를 합니다.');
    showMp();

    return time + randomMpAmount;
  }

  void showHp() {
    print('[현재 $name 클레릭의 체력은 $hp]');
  }

  void showMp() {
    print('[현재 $name 클레릭의 마나는 $mp]');
  }
}