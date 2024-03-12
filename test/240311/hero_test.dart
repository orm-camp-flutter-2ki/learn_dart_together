import 'package:learn_dart_together/240307/hero.dart';
import 'package:test/test.dart';

void main() {
  test('Hero test', () {
    Hero hero = Hero(name: 'name', hp: 100);

    hero.hp = 10;

    expect(hero.hp, 20);
  });

  test('Hero hp 타당성 검사 테스트', () {
    Hero hero = Hero(name: 'name', hp: 100);

    expect(() => hero.hp = -100, throwsException);
  });
}
