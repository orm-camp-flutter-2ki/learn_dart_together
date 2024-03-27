import 'package:learn_dart_together/240311/wand.dart';
import 'package:learn_dart_together/240311/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('wizard name test', () {
    // give
    Wand wand = Wand(name: "지팡이", power: 10.0);
    Wizard wizard = Wizard("마법사", 100, 50, wand: wand);
    wizard.name = 'a';
  });

  test('wizard hp test', () {
    Wand wand = Wand(name: "지팡이", power: 10.0);
    Wizard wizard = Wizard("마법사", 100, 50, wand: wand);

    wizard.hp = -100;
  });

  test('wizard mp test', () {
    Wand wand = Wand(name: "지팡이", power: 10.0);
    Wizard wizard = Wizard("마법사", 100, 50, wand: wand);

    wizard.mp = -5;
  });
}
