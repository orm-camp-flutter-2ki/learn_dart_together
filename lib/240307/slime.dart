import 'package:learn_dart_together/240307/monster.dart';

class Slime extends Monster {
  final int level = 10;

  Slime(super.hp, super.mp);

  @override
  void attack() {}

  @override
  void run() {
    print('도망');
  }
}