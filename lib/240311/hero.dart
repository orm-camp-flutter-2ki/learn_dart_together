import 'dart:math';
import 'slime.dart';
import 'sword.dart';

class Hero {
  static int money = 100;
  String name;
  int hp;
  Sword? sword;

  void bye() {
    print('빠이');
  }

  void die() {
    print('죽었다');
  }

  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    print('슬라임의 반격을 받았다');
    hp -= 10;
    if (hp <= 0) {
      die();
    }
  }

  Hero({required this.name, required this.hp, this.sword});

  static void setRandomMoney() {
    Hero.money = Random().nextInt(1000);
  }
}
