import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

int sumOfLargeNumbers(List<int> numbers) {
  int result;

  if( numbers.isEmpty ) {
    return 0;
  }

  if( numbers.length < 2 ) {
    return numbers.first;
  }

  numbers.sort((a, b) => b.compareTo(a));
  result = numbers[0] + numbers[1];

  return result;
}

void main() {
  group('연습 문제 3, 주어진 정수 배열 또는 리스트에서 가장 큰 두 수를 찾아 더한 값을 반환하는 함수를 작성하세요.', () {
    test('[1, 2, 5, 3, 9, 8]', () {
      // Given
      List<int> numbers = [1, 2, 5, 3, 9, 8];
      int expected = 17;

      // When
      final actualData = sumOfLargeNumbers(numbers);

      // Then
      expect(actualData, equals(expected));
    });

    test('[1]', () {
      // Given
      List<int> numbers = [1];
      int expected = 1;

      // When
      final actualData = sumOfLargeNumbers(numbers);

      // Then
      expect(actualData, equals(expected));
    });

    test('[]', () {
      // Given
      List<int> numbers = [];
      int expected = 0;

      // When
      final actualData = sumOfLargeNumbers(numbers);

      // Then
      expect(actualData, equals(expected));
      expect(0,0);
    });
  });
}
