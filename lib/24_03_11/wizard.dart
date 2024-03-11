import 'package:learn_dart_together/24_03_11/wand.dart';

class Wizard {
  String name;
  int hp;
  Wand? wand;

  Wizard({
    required this.name,
    required this.hp,
    this.wand,
  });
}
