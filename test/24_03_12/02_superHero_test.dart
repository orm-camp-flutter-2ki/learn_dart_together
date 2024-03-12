import 'package:learn_dart_together/24_03_12/03_slime.dart';
import 'package:learn_dart_together/24_03_12/02_superHero.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('hero, slime test', () {
    SuperHero man = SuperHero(name: '슈퍼맨', hp: 100);
    Slime slime = Slime('독슬라임');

    man.attack(slime);
    man.isFlying = true;
    man.attack(slime);

  });
}