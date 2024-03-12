import 'package:learn_dart_together/24_03_07/slime.dart';

import 'sword.dart';

int money = 50;

class Hero {
  String name;
  int hp;
  Sword? sword;

  Hero({required this.name, required this.hp, this.sword});

  void attack() {
    print('영웅이 슬라임을 공격했다.');
  }

  void run() {
    print('영웅은 도망쳤다');
  }
}


