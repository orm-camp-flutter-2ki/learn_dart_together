import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:test/test.dart';

void main() {
  test('이름 3글자 미만', () {
    Wand wand = Wand(name: '미스릴완드', power: 50.0);
    expect(() => wand.name = 'a', throwsException);
  });

  test('마력 0.5 미만 & 100 초과', () {
    Wand wand = Wand(name: '미스릴완드', power: 10.0);
    expect(() => wand.power = 0, throwsException);
  });
}
