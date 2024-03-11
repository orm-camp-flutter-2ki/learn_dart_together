import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:test/test.dart';

void main() {
  test('TEST_지팡이_파워_100.0_초과시_에러_메세지', () {
      Wand wand = Wand(name: '지팽이', power: 50);

      expect(() => wand.power = 200, throwsException);
  });

  test('TEST_지팡이_파워_0.5_미만시_에러_메세지', () {
    Wand wand = Wand(name: '지팽이', power: 50);

    expect(() => wand.power = 0.4, throwsException);
  });

  test('TEST_지팡이_이름_3글자_미만시_에러_메세지', () {
    Wand wand = Wand(name: '지팽이', power: 50);

    expect(() => wand.name = '지팡', throwsException);
  });

  test('TEST_지팡이_이름_빈값시_에러_메세지', () {
    Wand wand = Wand(name: '지팽이', power: 50);

    expect(() => wand.name = '', throwsException);
  });
}