import 'package:learn_dart_together/24_03_27/service/practice_service.dart';
import 'package:test/test.dart';

void main() {
  group('PracticeService 클래스', () {
    final PracticeService practiceService = PracticeService();
    group('isPalindrome 메소드는', () {
      test('인자로 받은 값이 회문이면 true를 반환한다.', () {
        // Given
        final expected = true;
        final text = 'level';

        // When
        final result = practiceService.isPalindrome(text);

        // Then
        expect(result, expected);
      });

      test('인자로 받은 값이 회문이 아니면 false를 반환한다.', () {
        // Given
        final expected = false;
        final text = 'hello';

        // When
        final result = practiceService.isPalindrome(text);

        // Then
        expect(result, expected);
      });
    });

    group('isPalindrome 메소드는', () {
      test('인자로 받은 값이 회문이면 true를 반환한다.', () {
        // Given
        final expected = true;
        final text = 'level';

        // When
        final result = practiceService.isPalindrome(text);

        // Then
        expect(result, expected);
      });

      test('인자로 받은 값이 회문이 아니면 false를 반환한다.', () {
        // Given
        final expected = false;
        final text = 'hello';

        // When
        final result = practiceService.isPalindrome(text);

        // Then
        expect(result, expected);
      });
    });

    group('sumOfLargestTwoNumbers 메소드는', () {
      test('인자로 받은 리스트에서 제일 큰 두 수를 더해서 반환한다.', () {
        // Given
        final expected = 9;
        final numbers = [1, 2, 3, 4, 5];

        // When
        final result = practiceService.sumOfLargestTwoNumbers(numbers);

        // Then
        expect(result, expected);
      });

      test('인자로 받은 리스트의 크기가 2 미만일경우 StateError 예외를 던진다.', () {
        // Given
        final numbers = [1];

        // When Then
        expect(() => practiceService.sumOfLargestTwoNumbers(numbers),
            throwsA(predicate((e) => e is StateError)));
      });
    });
  });
}
