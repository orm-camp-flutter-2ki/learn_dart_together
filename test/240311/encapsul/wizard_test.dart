import 'package:learn_dart_together/240311/encapsul/wand.dart';
import 'package:learn_dart_together/240311/encapsul/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('Wizard Test', () {
    Wand wand = Wand('지팡이', 50);
    Wizard wizard = Wizard('마법사', 50, 50, wand);

    // 테스트 통과
    wizard.name = '마법사';
    wizard.mp = 1;
    wand.name = '크로미';
    wand.power = 0.5;

    // 테스트 실패(예외 발생)
    // wizard.name = '법사';
    // wizard.mp = -1;
    // wand.power = 0.4;
    // wand.name = '완드';

  });
}