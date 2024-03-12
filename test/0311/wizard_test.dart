import 'package:learn_dart_together/0311/wand.dart';
import 'package:learn_dart_together/0311/wizard.dart';
import 'package:test/test.dart';

void main() {
  // given
  final Wand wand = Wand(name: '99강화나무몽둥이', power: 50.0);
  final Wizard wizard = Wizard('해리포터', 100, 100, wand);

  test('Wizard 인스턴스 생성', () {
    expect(wizard.wand.name, equals('99강화나무몽둥이'));
  });

  test('name 필드값 타당성 검사', () {
    expect(() => wizard.name = '해리', throwsException);
  });

  test('hp 필드값 타당성 검사', () {
    wizard.hp = -1;
    expect(wizard.hp, 0);
    // expect(() => wizard.hp = -1, 0);
  });

  test('mp 필드값 타당성 검사', () {
    expect(() => wizard.mp = -1, throwsException);
  });
}