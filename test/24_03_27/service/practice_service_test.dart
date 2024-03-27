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

      test('인자로 받은 리스트의 크기가 3 미만일경우 엘리먼트를 다 더해서 값을 반환한다.', () {
        // Given
        final expected = 3;
        final numbers = [1, 2];

        // When
        final result = practiceService.sumOfLargestTwoNumbers(numbers);

        // Then
        expect(result, expected);
      });
    });

    group('factorial 메소드는', () {
      test('1부터 인자로 받은 n까지의 수를 모두 곱해서 반환한다.', () {
        // Given
        final expected = 120;
        final n = 5;

        // When
        final result = practiceService.factorial(n);

        // Then
        expect(result, expected);
      });

      test('0이나 음수를 받을경우 1을 반환한다.', () {
        // Given
        final expected = 1;
        final n = 0;

        // When
        final result = practiceService.factorial(n);

        // Then
        expect(result, expected);
      });
    });
  });
}
