import 'package:learn_dart_together/240307/cleric.dart';
import 'package:test/test.dart';

void main() {
  test('Cleric test', () {
    Cleric cleric = Cleric('홍길동');

    expect(cleric.hp, maxHp);
    expect(cleric.mp, maxMp);

    cleric.hp = 1;

    cleric.selfAid();

    // equals는 써도 되고 안써도 됨
    expect(cleric.hp, equals(maxHp));
  });
}
