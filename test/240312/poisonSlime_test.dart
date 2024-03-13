import 'package:learn_dart_together/240312/slime/hero.dart';
import 'package:learn_dart_together/240312/slime/poison_slime.dart';
import 'package:test/test.dart';

void main() {
  test('슬라임 공격', () {
    PoisonSlime slime = PoisonSlime('슬라임');
    Hero hero = Hero(name: '용사', hp: 200);
    print(hero.hp);
    slime.attack(hero);
    print(hero.hp);
    slime.attack(hero);
    print(hero.hp);
    slime.attack(hero);
    print(hero.hp);
    slime.attack(hero);
    print(hero.hp);
    slime.attack(hero);
    print(hero.hp);
    slime.attack(hero);
    print(hero.hp);
    slime.attack(hero);
    print(hero.hp);
  });
}
