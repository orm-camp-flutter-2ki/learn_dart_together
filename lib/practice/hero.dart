import 'package:learn_dart_together/practice/slime.dart';

class Hero {
  String _name;
  int hp;
  int _attackPower = 5;

  Hero(this._name, this.hp) {
    print('Hero 클래스의 인스턴스를 생성했습니다.');
  }

  void attack(Slime slime) {
    print('$_name이 $slime을 공격했다.');
    hp -= 10;
  }

  void run() => print('$_name이 도망쳤다.');
}

class SuperHero extends Hero {
  SuperHero(super.name, super.hp) {
    print('SuperHero 클래스의 인스턴스를 생성했습니다.');
  }

  bool _isFlying = false;

  bool get isFlying => _isFlying;

  set isFlying(bool value) {
    _isFlying = value;
    print('$_name이 날개를 ${(value) ? "펼쳤다" : "접었다"}.');
  }

  @override
  void run() => print('$_name이 퇴각했다.');

  @override
  void attack(Slime slime) {
    super.attack(slime);

    if (isFlying) {
      print('$_name이 $slime을 공격했다.');
      slime.hp -= _attackPower;
      print('$_attackPower포인트의 추가 피해를 입혔다.');
    }
  }
}
//
void main() {
  var sh = SuperHero("전종현", 100);
  sh.isFlying = false;
  sh.isFlying = true;
  sh.run();
}
