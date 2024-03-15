import 'dart:math';

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
  int hp;
  Sword? sword;

  // 생성자 : 인스턴스 만드는 방법을 제공하는 함수같은 놈
  // Hero({
  //   required this.name,
  //   required this.hp,
  //   this.sword,
  // }); // this : 나

  // Hero('ddd', 11);
  // Hero('ddd', 11, sword: sword);
  // Hero(this.name, this.hp, {this.sword});

  // Hero(name: 'ddd', hp: 11);
  // Hero(name: 'ddd', hp: 11, sword: sword);
  Hero({required this.name, required this.hp, this.sword});

  static void setRandomMoney() {
    Hero.money = Random().nextInt(1000);
  }

  // 메서드
  // 싸우기
  void attack() {
    Hero.money -= 50;
    hp -= 5;
    print('이상하다 왜 내피가 $hp가 까지지?');
  }

  // 도망
  void run() {}

  @override
  String toString() {
    return 'name: $name, hp: $hp, sword: $sword';
  }

  @override
  bool operator ==(Object other) {
    return other is Hero &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        sword == other.sword;
  }

  @override
  int get hashCode => name.hashCode ^ sword.hashCode;

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
}
