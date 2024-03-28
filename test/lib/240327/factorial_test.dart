import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

int factorial(int n) {
  int result = n;

  if (n < 0) {
    return 0;
  }

  for (int i = 1; i < n; i++) {
    result *= i;
  }
  return result;
}

void main() {
  group('연습문제 4, 양의 정수 n이 주어졌을 때, n의 팩토리얼(factorial) 값을 반환하는 함수를 작성하세요.', () {
    test('n이 5일 때,', () {
      // Given
      final int n = 5;
      final int expected = 120;

      // When
      final int actualData = factorial(n);

      // Then
      expect(actualData, expected);
    });

    test('n이 -5일 때,', () {
      // Given
      final int n = -5;
      final int expected = 0;

      // When
      final int actualData = factorial(n);

      // Then
      expect(actualData, expected);
    });

    test('n이 0일 때,', () {
      // Given
      final int n = 0;
      final int expected = 0;

      // When
      final int actualData = factorial(n);

      // Then
      expect(actualData, expected);
    });
  });
}
