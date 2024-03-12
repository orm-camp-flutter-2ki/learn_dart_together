import 'package:learn_dart_together/0312/01/Hero.dart';
import 'package:learn_dart_together/0312/01/PoisonSlime.dart';
import 'package:test/test.dart';

void main() {
  // given
  PoisonSlime poisonSlime = PoisonSlime('포이즌');

  test('PoisonSlime 인스턴스 생성', () {
    // then
    expect(poisonSlime.suffix, '포이즌');
    expect(poisonSlime.specialAttackCount, 5);
  });

  test('attack 메서드 실행, 독 공격 남은 횟수가 0보다 큰 경우', () {
    // given
    Hero hero = Hero('히어로');

    // when
    poisonSlime.attack(hero);

    // then
    expect(poisonSlime.specialAttackCount, 4);
    expect(hero.hp, 72);
  });

  test('attack 메서드 실행, 독 공격 남은 횟수가 0인 경우', () {
    // given
    Hero hero = Hero('히어로');

    // when
    poisonSlime.specialAttackCount = 0;
    poisonSlime.attack(hero);

    // then
    expect(poisonSlime.specialAttackCount, 0);
    expect(hero.hp, 90);
  });
}