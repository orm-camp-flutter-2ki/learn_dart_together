import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('지팡이 이름 3글자 이상', () {
    Wand wand = Wand(name: 'name', power: 100);

    expect(() => wand.name = '김', throwsException);
    expect(() => wand.name = '김씨', throwsException);
    expect(() => wand.name = '김씨2', returnsNormally);
    expect(() => wand.name = '김씨22', returnsNormally);
  });

  test('지팡이 마력은 0.5 이상 100.0 이하 ', () {
    Wand wand = Wand(name: 'name2', power: 100);

    expect(() => wand.power = 0.4, throwsException);
    expect(() => wand.power = 0.5, returnsNormally);
    expect(() => wand.power = 100.1, throwsException);
    expect(() => wand.power = 100.0, returnsNormally);
  });
}
