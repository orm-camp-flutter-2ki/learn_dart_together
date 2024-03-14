import 'package:learn_dart_together/240308/cleric2.dart';
import 'package:test/test.dart';

void main() {
  test('Cleric test', () {
    Cleric cleric = Cleric('홍길동');

    expect(cleric.hp, Cleric.maxHp);
    expect(cleric.mp, Cleric.maxMp);

    cleric.hp = 1;

    cleric.selfAid();

    expect(cleric.hp, equals(Cleric.maxHp));
  });
}
