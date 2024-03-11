import 'dart:math';

import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:learn_dart_together/24_03_11/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('TEST_위자드_이름_빈값_확인', () {
    Wand asusWand = Wand(name: '아서스지팡이', power: 100);
    Wizard asus = Wizard(name: '아서스', hp: 50, mp: 10, wand: asusWand);

    asus.name = '';
  });

  test('TEST_위저드_이름_3글자_이상_인지_확인', () {
    Wand asusWand = Wand(name: '아서스지팡이', power: 100);
    Wizard asus = Wizard(name: '아서스', hp: 50, mp: 10, wand: asusWand);

    asus.name = '아서';
  });

  test('TEST_위저드_MP가_음수_값이면_오류_발생', () {
    Wand asusWand = Wand(name: '아서스지팡이', power: 100);
    Wizard asus = Wizard(name: '아서스', hp: 50, mp: 10, wand: asusWand);

    asus.mp = -1;
  });

  test('TEST_위저드_체력_음수면_0으로_만들기', () {
    Wand asusWand = Wand(name: '아서스지팡이', power: 100);
    Wizard asus = Wizard(name: '아서스', hp: 50, mp: 10, wand: asusWand);

    asus.hp = -1;

    expect(asus.hp, 0);
  });
}