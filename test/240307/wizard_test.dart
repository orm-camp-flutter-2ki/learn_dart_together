import 'package:learn_dart_together/240307/hero.dart';
import 'package:learn_dart_together/240307/inn.dart';
import 'package:learn_dart_together/240307/wand.dart';
import 'package:learn_dart_together/240307/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)', () {
    Wizard wizard = Wizard(name: 'name', hp: 100);

    expect(() => wizard.hp = -1, returnsNormally);
    expect(wizard.hp, 0);

    wizard.hp = 0;
    expect(wizard.hp, 0);

    wizard.hp = 1;
    expect(wizard.hp, 1);
  });
}