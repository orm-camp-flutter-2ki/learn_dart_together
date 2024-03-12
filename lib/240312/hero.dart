import 'package:learn_dart_together/240312/slime.dart';

class Hero {
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    hp -= 10;
  }

  void run() {
    print('$name이 도망쳤다.');
  }
}