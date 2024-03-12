
import 'package:learn_dart_together/240312/hero.dart';
import 'package:learn_dart_together/240312/poison_slime.dart';
import 'package:test/test.dart';

void main() {

  test('독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5 이다.', () {

    // Given(준비)
    PoisonSlime poisonSlime = PoisonSlime('독쟁이');

    // Then(검증)
    expect(poisonSlime.poisonAttackCount, equals(5));
  });


  test('PoisonSlime attack() 메소드가 호출되면 다음 내용의 공격을 한다.', () {

    // Given(준비)
    PoisonSlime poisonSlime = PoisonSlime('독쟁이');

    // 독 공격의 남은 횟수"가 0이 아니면
    int nowPoisonAttack = poisonSlime.poisonAttackCount;

    expect(nowPoisonAttack > 0, true);


    // When(실행)
    // 화면에 “추가로, 독 포자를 살포했다!” 를 표시
    // 용사의 HP 의 1/5에 해당하는 포인트를 용사의 HP 로부터 감소시키고, “~포인트의 데미지" 라고 표시
    Hero hero = Hero(name: '나영웅', hp: 50);
    poisonSlime.attack(hero);

    int newPoisonAttack = poisonSlime.poisonAttackCount;


    // Then(검증)
    // “독 공격의 남은 횟수" 를 1 감소 시킨다.
    expect(newPoisonAttack, (nowPoisonAttack -1));
  });

}