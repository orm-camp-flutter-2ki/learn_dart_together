import 'dart:math';
import 'package:learn_dart_together/0308/slime.dart';

import 'sword.dart';

// int heroMoney = 100; // top level 선언이 낫다

class Hero {
  String name;
  int _hp; // private, 클래스 내에서만 접근이 가능하다.
  Sword? sword;
  static int money = 100; // static, 공유 자원이 된다. 다른 영역에 있기 때문에 클래스에 없다고 생각

  Hero({
    required this.name,
    required int hp, // this.hp -> int hp
    this.sword,
  }) : _hp = hp;

  // 람다식(lambda expression), 화살표 표기법, arrow function
  // int get hp {
  // return _hp;
  // }
  int get hp => _hp;

  // 값을 받아와서 넣는다.
  set hp(int heroHp) {
    if(heroHp <= 0) {
      throw Exception('0이하의 수는 입력할 수 없습니다.');
    }
      _hp = heroHp;
  }

  void attack() {
    print('$name이 상대을 공격했다.');
    print('상대방이 반격했다.');
    _hp -= 10;
    if (hp <= 0) _die();
  }

  void run() {
    print('$name은 도망쳤다.');
  }

  void _die() {
    print('$name는 죽었습니다..');
  }

  void bye() {
    print('$name은 떠납니다.');
  }

  static void setRandomMoney() {
    // 공용 메소드가 된다.
    money = Random().nextInt(1000);
    // hero.money = Random().nextInt(1000); 위 코드는 앞의 hero. 생략된것
    print('$money의 소지금을 추가했다.'); // 정적 메소드안에서는 정적 필드만 접근 가능하다.
    // print('$name의 소지금을 추가했다.'); // 접근 불가
  }
}

void main() {}
