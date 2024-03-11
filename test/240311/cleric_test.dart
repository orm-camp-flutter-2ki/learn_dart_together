import 'package:learn_dart_together/240308/cleric.dart';
import 'package:test/test.dart';

void main() {
  test('Cleric Test', () {
    // STACK에 저장   //HEAP에 저장
    final cleric = Cleric('홍길동');
    int? a;

    cleric.pray(5);
    if (a == null) {
      a = 2;
    }

    expect(() => cleric.hp, throwsException);
  });
}
