import 'package:learn_dart_together/orm_240319/error.dart';
import 'package:test/test.dart';

void main() {
  Error1 error1 = Error1();
  test('에러 발생', () {
    final numString = '10.5';
    expect(error1.errorSome(numString), 0);
  });

  test('에러 발생', () {
    final numString = 'ten dot five';
    expect(error1.errorSome(numString), 0);
  });

  test('에러 미발생', () {
    final numString = '10';
    expect(error1.errorSome(numString), 10);
  });
}
