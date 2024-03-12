import 'package:test/test.dart';
import 'package:learn_dart_together/240311_homework/wand.dart';
import 'package:learn_dart_together/240311_homework/wizard.dart';

void main() {
  test('테스트', () {
    Wand wand = Wand(name: '김완드', power: 0.6);
    Wizard wizard = Wizard(10, 10, wand, name: '으어');
    wizard.hp = -10;
    wand.power = 101;
  });
}
