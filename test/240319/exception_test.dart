import 'package:test/test.dart';
import 'package:learn_dart_together/240319/exception.dart';

void main() {
  test('예외가 발생하는 경우', () {
    // given
    final numString = '10.5';
    int num;

    // when
    try {
      num = int.parse(numString);
    } catch (error) {
      num = 0; // 예외가 발생하면 0으로 처리
    }

    // test
    expect(num, equals(0)); // 예외가 발생하여 num이 0이 되었는지 확인
  });

  test('예외가 발생하지 않는 경우', () {
    // given
    final numString = '10';
    int num;

    // when
    try {
      num = int.parse(numString);
    } catch (error) {
      num = 0; // 예외가 발생하면 0으로 처리
    }

    // test
    expect(num, equals(10)); // 예외가 발생하지 않았으므로 num이 10인지 확인
  });
}