import 'package:learn_dart_together/240311/00_encapsulation/practice_1/wand.dart';
import 'package:learn_dart_together/240311/00_encapsulation/practice_1/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('Wizard test', () {

    final wand = Wand(name: '완드', power: 3);
    final wizard = Wizard(name: '수리', hp: 0, mp: 0, wand: wand);

    wizard.name = '수리수리마수리';
    // wizard.mp = -10;
    wizard.hp = -50;

  });
}