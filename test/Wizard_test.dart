import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:learn_dart_together/24_03_11/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('이름 3글자 미만', () {
    Wand wand = Wand(name: "미스릴완드", power: 10.0);
    Wizard wizard = Wizard(name: "아크메이지", hp: 100, mp: 50, wand: wand);
    expect(() => wizard.name = 'a', throwsException);
  });

  test('HP -> - ', () {
    Wand wand = Wand(name: "미스릴완드", power: 10.0);
    Wizard wizard = Wizard(name: "아크메이지", hp: 100, mp: 50, wand: wand);
    wizard.hp = -100;
    expect(wizard.hp, equals(0));
  });

  test('MP = -', () {
    Wand wand = Wand(name: "미스릴완드", power: 10.0);
    Wizard wizard = Wizard(name: "아크메이지", hp: 100, mp: 50, wand: wand);
    expect(() => wizard.mp = -5, throwsException);
  });
}
