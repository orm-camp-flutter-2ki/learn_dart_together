import 'package:learn_dart_together/0308/hero.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Hero test', () {
    Hero hero = Hero(name: '난용사', hp: 100);

    hero.hp = 10;

    expect(hero.hp, 20);
  });

  test('Hero hp 타당성 검사 테스트', () {
    Hero hero = Hero(name: '테스트용사', hp: 100);
    hero.hp = -100;
  });
}