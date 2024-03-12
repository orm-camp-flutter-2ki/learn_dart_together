import 'slime.dart';

class Hero {
  String name;
  int _hp;

  Hero({required this.name, required int hp}) : _hp = hp;


  int get hp => _hp;
  set hp(int value) {
    _hp = value;
  }

  // 인사
  void bye() {
    print('Bye ~');
  }


  // 공격
  void attack(Slime slime) {

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
