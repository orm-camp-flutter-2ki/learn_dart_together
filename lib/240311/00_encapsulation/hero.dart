import 'package:learn_dart_together/240311/00_encapsulation/king.dart';

import 'slime.dart';

class Hero {
  String name;
  int _hp;

  int get hp => _hp;

  Hero({required this.name, required int hp}) : _hp = hp;


  // 인사
  void bye() {
    print('Bye ~');
  }


  // 공격
  void attack(Slime slime) {

    print('$name이 레벨 ${slime.level} 슬라임을 공격했다.');
    print('슬라임의 반격을 받았다.');

    _hp -= 5;

    if( _hp <= 0 ) {
      _die();
    }
  }


  // 사망
  void _die() {
    print('죽었다.');
  }
}

void main() {

  Hero hero = Hero(name: '나영웅', hp: 10);
  hero.attack(Slime(30));
  hero.attack(Slime(30));

  King king = King();
  king.callHero(hero);
}
