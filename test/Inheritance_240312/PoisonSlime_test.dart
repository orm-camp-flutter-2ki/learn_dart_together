import 'package:learn_dart_together/240307/01_Hero.dart';
import 'package:learn_dart_together/Inheritance_240312/PoisonSlime.dart';
import 'package:test/test.dart';

void main() {
  test('프라임 독데미지 체크', () {
    PoisonSlime poisonSlime = PoisonSlime('Red Slime');
    Hero hero = Hero(name: '기명', hp: 50, initialHp: 50, mp: 10, initialMp: 10);
    poisonSlime.attack(hero);
    expect(hero.hp, 40);
    expect(poisonSlime.attackCount, 4);

    print(hero.hp);
    print(poisonSlime.attackCount);

  });
}
