import 'package:learn_dart_together/240311/person.dart';
import 'package:learn_dart_together/240311/wand.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/240311/wizard.dart';

void main() {
  test('wizard test', () {
    Wand wand = Wand(name: '지팡이', power: 10);
    Wizard wizard = Wizard('마법사', 30, 0, wand);

    // wizard.name = 'a';
    wizard.mp = -5;
  });
}
