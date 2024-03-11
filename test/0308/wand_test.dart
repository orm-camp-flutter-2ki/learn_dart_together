import 'package:learn_dart_together/0308/wand.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('wand의 이름 범위 테스트', () {
    // wand의 이름은 3글자 이상
    Wand wand = Wand(name: 'magic stick', power: 14.0);

    // 오류 테스트
    // wand.name = 'dd'; // error
    wand.name = 'ddd'; // not error

    // wand02.power = 0.0;  // error
    // wand02.power = 0.4; // error
    // wand02.power = 0.5;  // not error

    // [2] 100.0 이하
    // wand.power = 100.0; // not error
    // wand.power = 100.1; // error
    // wand.power = 1234.3; // error
  });
}
