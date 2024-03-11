import 'package:dart_cli_practice/240311/wand.dart';
import 'package:dart_cli_practice/240311/wizard.dart';
import 'package:test/test.dart';

void main() {

  test('wizard name test', () {
    // give
    Wand wand = Wand("지팡이", 10);
    Wizard w1 = Wizard('멀린', 100, 50, wand);

    w1.name = null;
  });

  test('wizard hp test', () {
    Wand wand = Wand("지팡이", 10);
    Wizard w1 = Wizard('멀린', 100, 50, wand);

    w1.hp = -100;
  });

  test('wizard mp test', () {
    Wand wand = Wand("지팡이", 10);
    Wizard w1 = Wizard('멀린', 100, 50, wand);

    w1.mp = -10;
  });
}
