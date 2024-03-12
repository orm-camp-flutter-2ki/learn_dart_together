import '../orm_240307/sword.dart';
import '../orm_240311/slime.dart';

class Hero {
  String name;
  int _hp;
  Sword? sword;

  Hero({
    required this.name,
    required int hp,
    this.sword,
  }) : _hp = hp;


  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    _hp -= 10;
  }

  void run() {
    print('$name이 도망쳤다.');
  }
}