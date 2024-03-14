import 'hero.dart';
import 'monster.dart';
import 'slime.dart';

class SuperHero extends Hero {
  bool _isFlying = false;

  SuperHero({
    required super.name,
    required super.hp,
  }) {
    print('2. SuperHero 생성자');
  }

  bool get isFlying => _isFlying;

  set isFlying(bool value) {
    _isFlying = value;

    if (value) {
      print('날랐다');
    } else {
      print('내려왔다');
    }
  }

  void hi() {
    print('hi');
  }

  @override
  void attack(Monster monster) {
    if (isFlying) {
      print('추가 공격');
    }
  }

  // annotation : 일종의 주석
  @override
  void run() {
    print('재정의: 슈퍼 히어로는 퇴각했다');
  }
}

void main() {

  // final hero = Hero(name: 'ss', hp: 10);

  final superHero = SuperHero(name: 'name', hp: 100);
  // superHero.isFlying = true;
  // superHero.isFlying = false;
  //
  // superHero.run();
  // superHero.hi();
  //
  // superHero.isFlying = true;
  //
  // superHero.attack();

}
