import 'package:learn_dart_together/0308/wand.dart';
import 'package:test/scaffolding.dart';

void main() {
  // wand의 마력은 5.0 이상 100.0 이하
  test('wand의 마력 범위 테스트', () {
    Wand wand = Wand(name: 'magic stick', power: 14.0);

    // 0.5 이상
    // wand.power = 0.0;  // error
    wand.power = 0.4;  // error
    // wand.power = 0.5;  // not error

    // 100.0 이하
    // wand.power = 100.0; // not error
    // wand.power = 100.1; // error
    // wand.power = 1234.3; // error

  });
}
