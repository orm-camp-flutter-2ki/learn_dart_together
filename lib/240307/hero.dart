import 'dart:math';

import 'package:learn_dart_together/240307/monster.dart';
import 'package:learn_dart_together/240307/wand.dart';

import 'slime.dart';
import 'sword.dart';

int heroMoney = 100;

void setRandomMoney() {
  heroMoney = Random().nextInt(1000);
}

//
int f(int x) {
  return x * 2;
}

class Hero implements Comparable<Hero> {
  static int money = 100;

  String name;
  int _hp;
  Sword? sword;

  Hero({
    required this.name,
    required int hp,
    this.sword,
  }) : _hp = hp {
    // print('1. Hero 생성자');
  }

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
  void attack(Monster monster) {
    Hero.money -= 50;
    _hp -= 5;
    print('이상하다 왜 내피가 $_hp가 까지지?');
  }

  // 도망
  void run() {
    print('영웅은 도망쳤다');
  }

  void _die() {}

  void bye() {}

  @override
  String toString() {
    return 'Hero{name: $name, _hp: $_hp, sword: $sword}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Hero && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  int compareTo(Hero other) {
    return name.compareTo(other.name);
  }

  Hero copyWith({
    String? name,
    int? hp,
  }) {
    return Hero(
      name: name ?? this.name,
      hp: hp ?? this.hp,
    );
  }
}

void main() {
  int i = 10;
  String name = 'aaa';
  double d = 30.0;

  // 내가 만든 것
  Hero hero = Hero(name: 'name', hp: 100);

  Hero.money = 100;

  hero.attack(Goblin(100, 100));
  hero.attack(Slime(100, 100));

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

  const Person({required this.name, int? birthYear})
      : _birthYear = birthYear ?? defaultBirthYear;
}
