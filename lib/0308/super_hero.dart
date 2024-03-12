import 'package:learn_dart_together/0308/hero.dart';
import 'package:learn_dart_together/0308/slime.dart';

class SuperHero extends Hero {
  // 기반이 된 class(super.)의 생성자
  SuperHero({required super.name, required super.hp});

  // 추가된 field
  bool _isFlying = false;

  // getter property
  bool get isFlying => _isFlying;

  // setter property
  // fly 기능
  set isFlying(bool flyingValue) {
    isFlying = flyingValue;
    isFlying ? print('날았다.') : print('내려왔다.');
    return;
  }

  @override
  // 기존 기능을 재정의, 덮어씌우기
  // annnotation : 일종의 주석
  void run() {
    print('슈퍼히어로는 도망쳤다.');
  }

  @override
  void attack() {
    attack(); // 기존 super 클래스의 기능
    print('추가 공격'); // 기능을 추가로 수행
  }
}

void main() {
  SuperHero superHero = SuperHero(name: 'super1', hp: 150);
  superHero.attack();

}
