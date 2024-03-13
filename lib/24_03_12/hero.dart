// 연습문제의 slime 클래스 작성을 위해 강사님의 hero클래스를 사용하였습니다.

import 'dart:math';

import 'package:learn_dart_together/24_03_11/wand.dart';

import 'sword.dart';

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

  static void setRandomMoney() {
    Hero.money = Random().nextInt(1000);
  }

  // 메서드
  // 싸우기
  void attack() {
    Hero.money -= 50;
    _hp -= 5;
    print('이상하다 왜 내피가 $_hp가 까지지?');
  }

  // 도망
  void run() {}

  void _die() {}

  void bye() {}
}

void main() {
  int i = 10;
  String name = 'aaa';
  double d = 30.0;

  // 내가 만든 것
  Hero hero = Hero(name: 'name', hp: 100);

  Hero.money = 100;

  // Hero hero2 = Hero('홍길동', 100);
  // Hero hero3 = Hero('홍길동', 100);

  // print('공격 전 : ${hero.hp}');
  // hero.attack();
  // print('공격 후 : ${hero.hp}');
  List aa = [1, 1];

  Wand wand = Wand(name: '지팡이', power: 100);

  print(wand.name);
}

class Person {
  static const defaultBirthYear = 2024;
  final String name;
  final int _birthYear;

  int get age => DateTime.now().year - _birthYear;

  Person({required this.name, int? birthYear})
      : _birthYear = birthYear ?? defaultBirthYear;
}
