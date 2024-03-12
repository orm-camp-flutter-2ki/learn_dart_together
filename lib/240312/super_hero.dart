import 'package:learn_dart_together/240312/hero.dart';
import 'package:learn_dart_together/240312/slime.dart';

class SuperHero extends Hero {
  SuperHero ({required super.name, required super.hp,}){
   print('superhero 인스턴스 생성');
  }

  bool _isFlying = false;
  bool get isFlying => _isFlying;

  set isFlying(bool vaule) {
    _isFlying = vaule;
    if (vaule) {
      print('$name이 날개를 펼쳤다.');
    } else {
      print('$name이 날개를 접었다.');
    }
  }

  @override
  void run(){
    print('$name이 퇴각했다.');
  }

  @override
  void attack(Slime slime){
    super.attack(slime);
    if(isFlying) {
      print('$name이 $slime을 공격했다.');
      slime.hp -= 5;
      print('5포인트의 추가 피해를 입혔다.');
    }
  }

}