import 'package:learn_dart_together/24_03_12/02_superHero.dart';
import 'package:learn_dart_together/24_03_12/04_poisonSlime.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('poison slime test', () {
    PoisonSlime poisonSlime = PoisonSlime('A');
    SuperHero hero = SuperHero(name: '슈퍼맨', hp: 100);

    for (int i = 0; i < 10; i++) {
      poisonSlime.attack(hero);
    }
  });
}
