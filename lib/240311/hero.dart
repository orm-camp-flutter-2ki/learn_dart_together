

import '../240311/slime.dart';

class Hero {
  String name;
  int hp;

  // 생성자 : 인스턴스 만드는 방법을 제공하는 함수같은 놈
  // Hero({
  //   required this.name,
  //   required this.hp,
  //   this.sword,
  // }); // this : 나

  Hero({required this.name, required this.hp});


  // 인사
  void bye() {
    print('Bye ~');
  }


  // 공격
  void attack(Slime slime) {

    print('$name이 $slime을 공격했다.');
    print('슬라임의 반격을 받았다.');

    hp -= 5;

    if( hp <= 0 ) {
      die();
    }
  }


  // 사망
  void die() {

  }
}

void main() {

  Hero hero = Hero(name: '나영웅', hp: 100);

}
