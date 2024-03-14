import 'package:learn_dart_together/240307/character.dart';
import 'package:learn_dart_together/240307/slime.dart';

class Dancer extends Character {
  Dancer(super.name, super.hp);

  @override
  void attack(Slime slime) {
    // TODO: implement attack
  }

}

void main() {
  Character character = Dancer('name', 100);

  // 타입 캐스팅
  Dancer dancer = character as Dancer;

  Character character2 = dancer;

}