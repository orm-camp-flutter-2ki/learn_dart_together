import 'package:learn_dart_together/240312/slime/hero.dart';
import 'package:learn_dart_together/240312/slime/poisonslime.dart';
import 'package:test/test.dart';

void main() {
  test('Hero hp test', () {
    Hero hero = Hero("영웅", 100);
    PoisonSlime poisonSlime = PoisonSlime('A');

    poisonSlime.attack(hero);
    poisonSlime.attack(hero);
    poisonSlime.attack(hero);
    poisonSlime.attack(hero);
    poisonSlime.attack(hero);

    expect(hero.hp, equals(0));
  });
}
