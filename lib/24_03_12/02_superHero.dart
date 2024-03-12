import '01_hero.dart';
import '03_slime.dart';

class SuperHero extends Hero {

  bool _isFlying = false;

  SuperHero({required super.name, required super.hp});

  bool get isFlying => _isFlying;

  set isFlying(bool value) {
    _isFlying = value;
    if (value) {
      print('$name이 날개를 펼쳤다.');
    } else {
      print('$name이 날개를 접었다.');
    }
  }

  @override
  void attack(Slime slime) {
    print('$name이 $slime을 공격했다.');
    slime.hp -= 10;

    if (isFlying) {
      print('$name이 $slime을 공격했다.');
      slime.hp -= 10;
      print('5의 추가 피해를 입혔다.');
    }
  }

  @override
  void run() {
    print('$name이 호다닥 도망갔다.');
  }
}