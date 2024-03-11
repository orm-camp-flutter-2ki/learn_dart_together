import 'package:dart_cli_practice/240311/wand.dart';
import 'package:test/test.dart';

void main() {
  test('wand name test', () {
    // give
    Wand wand = Wand("지팡이", 10);

    // when, then
    wand.name = null;
  });

  test('wand power test', () {
    Wand wand = Wand("지팡이", 10);
    wand.power = 0.2;
  });
}
