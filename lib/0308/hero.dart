import 'dart:math';
import 'sword.dart';

// int heroMoney = 100; // top level 함수로 선언하는게 낫다 static

class Hero {
  String name;
  int hp;
  Sword? sword;
  static int money = 100; // static, 공유 자원이 된다. 다른 영역에 있기 때문에 클래스에 없다고 생각

  Hero({
    required this.name,
    required this.hp,
    this.sword,
  });

  void attack() {
    print('공격했습니다!');
  }

  void run() {
    print('당신은 도망쳤다!');
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
