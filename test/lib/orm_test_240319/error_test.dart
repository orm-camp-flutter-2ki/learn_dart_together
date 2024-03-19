import 'package:learn_dart_together/orm_240319/error.dart';
import 'package:test/test.dart';

void main() {
  test('에러 발생', () {
    try {
      final numString = '10.5';
      int num = int.parse(numString);

    } catch (e) {
      int num = 0;
      expect(num, 0);
    }
  });
}
