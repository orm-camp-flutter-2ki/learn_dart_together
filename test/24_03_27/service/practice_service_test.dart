import 'package:learn_dart_together/24_03_27/model/bank.dart';
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
  });
}
