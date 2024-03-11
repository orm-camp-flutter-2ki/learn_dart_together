import 'package:learn_dart_together/240311/wand.dart';
import 'package:learn_dart_together/240311/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('Wizard Test', () {
    Wand wand = Wand('지팡팡이', 30);
    Wizard wizard = Wizard('박세훈', 30, 0, wand);
    // wizard.name = '짧게';
    // wizard.mp = -3;
  });
}