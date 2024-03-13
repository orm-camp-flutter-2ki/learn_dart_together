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

/*
void main() {
  test('지팡이의 이름은 반드시 3문자 이상이어야 한다', () {
    Wand wand = Wand(name: 'name', power: 100);

    expect(() => wand.name = '김', throwsException);
    expect(() => wand.name = '김씨', throwsException);
    expect(() => wand.name = '김씨2', returnsNormally);
    expect(() => wand.name = '김씨22', returnsNormally);
  });

  test('지팡이의 마력은 0.5이상 100.0 이하여야 한다', () {
    Wand wand = Wand(name: 'name', power: 100);

    expect(() => wand.power = '0.4', throwsException);
    expect(() => wand.power = '0.4', throwsException);
    expect(() => wand.power = '100.1', returnsNormally);
    expect(() => wand.power = '100', returnsNormally);
  });
}
*/