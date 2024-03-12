import 'package:dart_cli_practice/240307/hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime({required this.suffix});

  void attack(Hero hero) {
    print('슬라임 $suffix 이/가 공격했다.');
    print('10의 데미지');
    hero.hp -= 10;
  }

  void run() {
    print('[슬라임 $suffix 가 도망쳤다.]');
  }
}