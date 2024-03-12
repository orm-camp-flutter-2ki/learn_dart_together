import 'package:learn_dart_together/24_03_11/wizard.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Wizard wizard) {
    print('슬라임$suffix 이/가 공격했다.');
    print('10의 데미지');
    wizard.hp -= 10;
  }
}