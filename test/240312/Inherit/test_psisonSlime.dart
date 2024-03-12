import 'package:learn_dart_together/240312/Inherit/hero.dart';
import 'package:learn_dart_together/240312/Inherit/poisonSlime.dart';
import 'package:test/test.dart';

void main() {
  test('slimeTest', () {
    PoisonSlime poisonSlimeA = PoisonSlime('A');
    Hero hero = Hero('히어로', 100);

    poisonSlimeA.attack(hero);

    expect(hero.hp, equals(72));

    for(int i=0; i<5;i++){
      poisonSlimeA.attack(hero);
    }
    expect(poisonSlimeA.poisonAttackPoint, equals(0));
  });
}
