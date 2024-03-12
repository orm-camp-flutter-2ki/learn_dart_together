import 'dart:io';
import 'package:learn_dart_together/240311/wand.dart';

class Wizard {
  String name;
  int hp;
  int mp;
  Wand wand;

  Wizard({
    required this.name,
    required this.hp,
    required this.mp,
    required this.wand
  }) {
    _checkMP();
  }

  void _checkMP() {
    if (mp <= 0) {
      mp = 0;
    }
  }
}

void main() {
  Wand someWand = Wand(name: '지팡1', power: 10);
  Wizard wizard = Wizard(name: 'name', hp: 30, mp: -10000, wand: someWand);

  print(wizard.mp);
}