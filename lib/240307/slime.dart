import 'package:dart_cli_practice/240307/hero.dart';
import 'package:dart_cli_practice/240314/monster.dart';

class Slime extends Monster {
  int hp = 50;
  final String suffix;

  Slime({required this.suffix});

  void attack(Hero hero) {
    print('슬라임 $suffix 이/가 공격했다.');
    print('10의 데미지');
    hero.hp -= 10;
  }

  @override
  void run() {
    print('[슬라임 $suffix 가 도망쳤다.]');
  }
}