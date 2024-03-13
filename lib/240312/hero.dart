import 'dart:math';

import 'package:learn_dart_together/240312/sword.dart';

int heroMoney = 100;

void setRandomMoney() {
  heroMoney = Random().nextInt(1000);
}

//
int f(int x) {
  return x * 2;
}

class Hero {
  static int money = 100;

  String name;
  int _hp;
  Sword? sword;

  Hero({
    required this.name,
    required int hp,
    this.sword,
  }) : _hp = hp;

  // expression body, lambda expression
  // 람다식, 화살표 표기법, arrow function
  int get hp => _hp;

  // 잘 안 씀
  set hp(int value) {
    if (value < 0) {
      throw Exception('음수를 입력할 수 없습니다');
    }
    _hp = value;
  }
}
