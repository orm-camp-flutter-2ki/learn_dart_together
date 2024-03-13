import 'package:learn_dart_together/24_03_11/02_wand.dart';
import 'package:test/test.dart';

void main() {
  test('Wand Test',() {
    Wand wand = Wand(name: 'Wanded', power: 13.0);

    // wand.name = 'dd';
    // wand.power = 123.5;

    expect(() => wand.power = 123.5, throwsException);
  });
}