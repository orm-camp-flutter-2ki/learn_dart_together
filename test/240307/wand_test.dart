import 'package:learn_dart_together/240307/hero.dart';
import 'package:learn_dart_together/240307/inn.dart';
import 'package:learn_dart_together/240307/wand.dart';
import 'package:test/test.dart';

void main() {
  test('지팡이의 이름은 반드시 3문자 이상이어야 한다', () {
    Wand wand = Wand(name: 'name', power: 100);

    expect(() => wand.name = '김', throwsException);
    expect(() => wand.name = '김씨', throwsException);
    expect(() => wand.name = '김씨2', returnsNormally);
    expect(() => wand.name = '김씨22', returnsNormally);
  });

}
