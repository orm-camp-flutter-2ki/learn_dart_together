import 'package:learn_dart_together/24_03_07/01_cleric.dart';
import 'package:test/test.dart';

void main() {
  // test('description', body() { });   <- test code 형식
  test('test', () {
    // given (준비)
    Cleric cleric = Cleric('홍길동');

    // when (실행)
    cleric.hp = 101;
    cleric.selfAid();

    // then (검증)
    expect(cleric.hp, Cleric.maxHp);
    expect(cleric.hp, 101);
  });
}
