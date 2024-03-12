import '../orm_240307/sword.dart';
import '../orm_240312/slime.dart';

class Hero {
  String name;
  int hp = 100;
  // int hp;
  Sword? sword;

  Hero({
    required this.name,
    /*required this.hp,*/
    this.sword,
  });

  //
  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    hp -= 10;
  }

  void run() {
    print('$name이 도망쳤다.');
  }
}

