import 'dart:math';

import '../240307/sword.dart';
import 'slime.dart';

class Hero {
  static int money = 100;
  String name;
  // 1) hp변수 private으로 변경, late로 변경
  int _hp;
  Sword? sword;

  void bye() {
    print('빠이');
  }

  // 2_ die 메소드 private으로 변경
  void _die() {
    print('죽었다');
  }

  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    print('슬라임의 반격을 받았다');
    _hp -= 10;
    if (_hp <= 0) {
      _die();
    }
  }

  // 3) setter 추가
  set hp(int value) {
    _hp = value;
  }

  // 3) getter 추가
  int get hp => _hp;

  // 1) hp생성자 변경
  Hero({required this.name, required int hp, this.sword})
      : assert(hp >= 0, '음수를 입력할 수 없습니다'), // Validation check
        _hp = hp;

  static void setRandomMoney() {
    Hero.money = Random().nextInt(1000);
  }
}
