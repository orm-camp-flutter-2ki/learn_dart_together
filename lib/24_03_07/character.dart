import 'package:learn_dart_together/24_03_07/slime.dart';

abstract class Charactor {
  String name;
  int hp;

  Charactor(this.name, this.hp);

  void attack(Slime slime);
}