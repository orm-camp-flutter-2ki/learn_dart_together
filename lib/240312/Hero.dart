import 'package:learn_dart_together/240312/Slime.dart';

class Hero {
  String name;
  int hp;

  Hero(this.name, this.hp);

  void attack(Slime slime) {
    print('$name 이 $slime을 공격했다.');
    hp -= 10;
    print('내 체력 $hp');
  }

  void takePosion(int damage) {
    hp -= damage;
    print('남은 체력 $hp');
  }

  void run() {
    print('$name 이 도망쳤다.');
  }
}
