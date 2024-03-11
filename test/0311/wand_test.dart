import 'package:learn_dart_together/0311/wand.dart';
import 'package:test/test.dart';

void main() {
  // given
  final Wand wand = Wand(name: '99강화나무몽둥이', power: 50.0);

  test('Wand 인스턴스 생성', () {
    expect(wand.power, equals(50.0));
  });

  test('name 필드값 타당성 검사', () {
    expect(() => wand.name = '99', throwsException);
  });

  test('power 필드값 타당성 검사', () {
    expect(() => wand.power = 0.1, throwsException);
  });
}