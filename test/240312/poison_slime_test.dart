import 'package:learn_dart_together/240312/practice3/hero.dart';
import 'package:learn_dart_together/240312/practice3/poison_slime.dart';
import 'package:test/test.dart';

void main() {
  test('Poison Slime Test', () {
    Hero hero = Hero('김용사', 100);
    PoisonSlime slime = PoisonSlime('A');

    for (int i = 0; i < 6; i++) {
      slime.attack(hero);
    }
    expect(slime.poisonPoint, 0); // poisonPoint가 0인지 체크
  });
}