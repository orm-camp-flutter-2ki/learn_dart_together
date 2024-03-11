
import 'package:learn_dart_together/24_03_11/1-1/wand.dart';
import 'package:learn_dart_together/24_03_11/1-1/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('Wizard Test', () {
    Wand wand = Wand(name: "츄츄", power: 10);
    Wizard w1 = Wizard(name: '루루', hp: 100, mp: 50, wand: wand);

    w1.mp = -100;
  });
}