import 'package:learn_dart_together/0308/hero.dart';
import 'package:learn_dart_together/0308/slime.dart';
import 'package:learn_dart_together/0308/slime_poison.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  Hero hero = Hero(name: '12일의 용사', hp: 120);
  PoisonSlime poisonSlime = PoisonSlime('suffix');

  print('[test 캐릭터 생성] 이름: ${hero.name}, HP: ${hero.hp}\n');
  print('====== [Test] 시작 ======\n');

  test('독 공격 시 독 공격 횟수 차감 테스트', () {
    poisonSlime.poisonCount = 1;
    poisonSlime.attack(hero); // poisonCount == 0

    expect(poisonSlime.poisonCount, -1); // error
    // expect(poisonSlime.poisonCount, 0); // error
    // expect(poisonSlime.poisonCount, 1); // not error
  });

  test('독 공격 횟수 0일 때 테스트', () {
    poisonSlime.poisonCount = 1;

    for (int i = 0; i < 2; i++) {
      print('공격 ${i + 1} 번째');
      poisonSlime.attack(hero);
      print('[현재 상태] 이름: ${hero.name}, HP: ${hero.hp}\n');
    }
  });
}
