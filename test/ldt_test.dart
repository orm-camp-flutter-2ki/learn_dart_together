import 'package:learn_dart_together/24_03_07/wand.dart';
import 'package:learn_dart_together/24_03_07/wizard.dart';
import 'package:test/test.dart';

void main() {
  test('wizard power', () {
    final wand = Wand('지팡이',  5);
    wand.power = 100.0;
    wand.name = '대지팡이';
    final wizard = Wizard('마법사', 100, 50, wand);
    wizard.name = '대마법사';
    wizard.hp = -1;
    print("-1 넣은 hp는? : ${wizard.hp}"); // 0
    print("wizard power : ${wand.power}");
    wizard.mp = 0;
  });
}
