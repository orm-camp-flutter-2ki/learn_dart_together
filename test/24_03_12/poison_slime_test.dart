import 'package:learn_dart_together/24_03_12/hero.dart';
import 'package:learn_dart_together/24_03_12/poison_slime.dart';
import 'package:test/test.dart';

void main() {
  test('poisionSlime이 공격시 체력 50의 hero의 체력은 32가 된다.', () {
    Hero hero = Hero('용사', 50);
    PoisonSlime poisionSlime = PoisonSlime('독슬라임');

    poisionSlime.attack(hero);

    expect(hero.hp, 32);
  });

  test('poisionSlime은 5번의 공격만 할 수 있다.', () {
    Hero hero = Hero('용사', 50);
    PoisonSlime poisionSlime = PoisonSlime('독슬라임');

    for (var i = 0; i < 5; i++) {
      poisionSlime.attack(hero);
    }

    expect(poisionSlime.attackCount, 0);
  });
}