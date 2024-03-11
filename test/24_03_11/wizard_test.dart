import 'dart:math';

import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:learn_dart_together/24_03_11/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('wizard mp set test', () {
    Wand asusWand = Wand(name: '아서스지팡이', power: 100);
    Wizard asus = Wizard('아서스', 50, 10, asusWand);

    asus.setMP = -1;
  });

  test('wizard hp set test', () {
    Wand asusWand = Wand(name: '아서스지팡이', power: 100);
    Wizard asus = Wizard('아서스', 50, 10, asusWand);

    asus.setHP = -1;

    expect(asus.hp, 0);
  });
}