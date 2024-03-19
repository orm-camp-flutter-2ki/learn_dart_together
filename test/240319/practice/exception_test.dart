import 'package:dart_cli_practice/240319/practice/exception.dart';
import 'package:test/test.dart';

void main() {
  test('실수형태의 숫자가 입력되면 0을 반환한다.', () {
    expect(catchException('10.5'), 0);
  });

  test('정수형태의 숫자가 입력되면 그 정수값을 반환한다.', () {
    expect(catchException('-5'), -5);
  });
}