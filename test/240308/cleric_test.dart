import 'package:learn_dart_together/240308/cleric.dart';
import 'package:test/test.dart';

void main() {
  test('Cleric test', () {
    Cleric cleric = Cleric('홍길동', hp: 50, mp : 10);

    expect(cleric.hp, equals(Cleric.maximumHp));
  });
}