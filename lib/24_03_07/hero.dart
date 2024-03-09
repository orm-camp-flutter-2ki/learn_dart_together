import 'sword.dart';

int money = 50;

class Hero {
  String name;
  int hp;
  Sword? sword;

  Hero({required this.name, required this.hp, this.sword});

  void attack() {
    print('공격했습니다');
  }

  void run() {}

  void sleep() {}
}
