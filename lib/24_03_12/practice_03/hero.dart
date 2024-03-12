import 'package:learn_dart_together/24_03_12/practice_03/slime.dart';

class Hero {
  String name;
  int hp;

  Hero({
    required this.name,
    required this.hp,
  });

  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    hp -= 10;
  }

  void die() {
    print('$name이/가 사망했습니다.');
  }

  void run() {
    print('$name이 도망쳤다.');
  }
}
