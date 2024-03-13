import 'package:learn_dart_together/240312/poisonslime.dart';
import 'package:test/test.dart';
import 'package:learn_dart_together/240312/hero.dart';
import 'package:learn_dart_together/240312/slime.dart';

void main() {
  test('hero test', () {
    Hero hero = Hero('홍길동', 50);
    Slime slime = Slime('slime');
    PoisonSlime poisonSlime = PoisonSlime('poison');

    poisonSlime.attack(hero);
    expect(hero.hp, 40);
    expect(poisonSlime.count, 4);
  });
}
