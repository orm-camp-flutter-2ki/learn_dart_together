import 'dart:math';

import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:learn_dart_together/24_03_11/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('TEST_위자드_이름_빈값_이면_에러_메세지', () {
    Wand asusWand = Wand(name: '아서스지팡이', power: 100);
    Wizard asus = Wizard(name: '아서스', hp: 50, mp: 10, wand: asusWand);

    expect(() => asus.name = '', throwsException);
  });

  test('TEST_위저드_이름_3글자_미만_이면_에러_메세지', () {
    Wand asusWand = Wand(name: '아서스지팡이', power: 100);
    Wizard asus = Wizard(name: '아서스', hp: 50, mp: 10, wand: asusWand);

    expect(() => asus.name = '아서', throwsException);
  });

  test('TEST_위저드_MP가_음수_값이면_에러_메세지', () {
    Wand asusWand = Wand(name: '아서스지팡이', power: 100);
    Wizard asus = Wizard(name: '아서스', hp: 50, mp: 10, wand: asusWand);

    expect(() => asus.mp = -1, throwsException);
  });

  test('TEST_위저드_체력_음수면_0으로_만들기', () {
    Wand asusWand = Wand(name: '아서스지팡이', power: 100);
    Wizard asus = Wizard(name: '아서스', hp: 50, mp: 10, wand: asusWand);

    asus.hp = -1;

    expect(asus.hp, 0);
  });
}