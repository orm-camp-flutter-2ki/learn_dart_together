import 'dart:io';
import 'dart:math';

class Cleric {
  String name;
  int hp = 50;

  int maxHp = 50;

  int mp = 10;

  int maxMp = 10;

  Cleric(
    this.name,
    this.hp,
    this.mp,
  );

  void slefAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
      print('셀프 에이드 사용. \nhp가 $hp이 되었습니다.\nmp가 $mp이 되었습니다');
    } else {
      print('mp가 부족합니다');
    }
  }

  void pray() {
    print('기도 시간을 입력하시오.');
    int time = int.parse(stdin.readLineSync()!);
    int prayMp = Random().nextInt(3) + time + mp;
    mp = prayMp;
    mp > 10 ? 10 : mp;
    print(mp);
  }

  void main() {
    Cleric cleric = Cleric('클래릭', 50, 10);

    cleric.pray();
  }
}
