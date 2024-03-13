import 'package:learn_dart_together/24_03_07/slime.dart';
import 'package:learn_dart_together/24_03_07/sword.dart';
import 'Hero.dart';

class SuperHero extends Hero {
  bool _isFlying = false;

  SuperHero({required super.name, required super.hp});

  bool get isFlying => _isFlying;

  set isFlying(bool value) {
    _isFlying = value;

    if (value) {
      print('날았다');
    } else {
      print('내려왔다');
    }
  }

  @override
  void attack() {
    if(isFlying) {
      print('추가 공격');
    }
    super.attack();
  }

  //annotation : 일종의 주석
  @override
  void run() {
    print('재정의 : 슈퍼 히어로는 퇴각했다');
  }
}

void main() {
  final hero = Hero(name: '홍길동', hp: 100);
  final superHero = SuperHero(name: 'name', hp: 100);

  hero.run();
  superHero.run();

  superHero.isFlying = true;
  superHero.attack();
}
