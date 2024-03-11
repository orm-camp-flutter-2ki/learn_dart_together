import 'package:learn_dart_together/24_03_07/wand.dart';
import 'package:test/test.dart';

void main() {
  test('wand power test', () {
    // 2. 마력 0.5이상 100.0이하
    // given when
    final fireWand = Wand(name: 'fireWand', power: 10.0);

    // then
    expect(() => fireWand.power = 0.1, throwsException);
  });
}
