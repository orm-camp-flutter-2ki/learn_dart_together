

import 'sword.dart';

class Hero {
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

  // 메서드
  // 싸우기
  void attack() {
    hp -= 5;
    print('이상하다 왜 내피가 $hp가 까지지?');
  }

  // 도망
  void run() {}
}

void main() {
  int i = 10;
  String name = 'aaa';
  double d = 30.0;

  // 내가 만든 것
  Hero hero = Hero(name: 'name', hp: 100);
  // Hero hero2 = Hero('홍길동', 100);
  // Hero hero3 = Hero('홍길동', 100);

  // print('공격 전 : ${hero.hp}');
  // hero.attack();
  // print('공격 후 : ${hero.hp}');
}
