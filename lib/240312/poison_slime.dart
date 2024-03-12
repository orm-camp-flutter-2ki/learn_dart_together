import 'package:dart_cli_practice/240307/hero.dart';
import 'package:dart_cli_practice/240307/slime.dart';

class PoisonSlime extends Slime {
  static const type = "독"; // 슬라임의 type을 선언 (재미로)
  int _remainPoisonCount = 5;

  PoisonSlime({required super.suffix});

  @override
  void attack(Hero hero) {
    super.attack(hero);

    if(_remainPoisonCount > 0) { // _poisonCount 가 1 이상일 때
      print('추가로, 독 포자를 살포했다!'); // 공격 출력
      int damage = hero.hp ~/ 5; // 데미지 계산
      hero.hp -= damage; // hero 의 체력 감소
      print('$damage 포인트의 데미지'); // 데미지 출력
      _remainPoisonCount--; // _poisonCount 감소
    }
  }
}