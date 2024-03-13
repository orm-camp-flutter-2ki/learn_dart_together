import 'package:learn_dart_together/240307/slime.dart';

// 추상클래스
abstract class Character {
  String name;
  int hp;

  Character(this.name, this.hp);

  void attack(Slime slime);
}