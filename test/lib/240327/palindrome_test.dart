import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

bool isPalindrome(String text) {
  String cleanText = text.toLowerCase().replaceAll(' ', '');
  String reversedText = cleanText.split('').reversed.join('');

  return cleanText == reversedText;
}

void main() {
  group('주어진 문자열이 회문(palindrome)인지 확인하는 함수 작성', () {
    test('racercar 문자열 대입', () {
      // Given
      String racecar = 'racecar';
      bool expectedResult = true;

      // When
      final result = isPalindrome(racecar);

      // Then
      expect(result, expectedResult);
    });

    test('hello 문자열 대입', () {
      // Given
      String hello = 'hello';
      bool expectedResult = false;

      // When
      final result = isPalindrome(hello);

      // Then
      expect(result, expectedResult);
    });

    test('남성남 문자열 대입', () {
      // Given
      String hello = '남성  남';
      bool expectedResult = true;

      // When
      final result = isPalindrome(hello);

      // Then
      expect(result, expectedResult);
    });

    test('woo oo ooow 문자열 대입', () {
      // Given
      String wow = 'woo oo ooow';
      bool expectedResult = true;

      // When
      final result = isPalindrome(wow);

      // Then
      expect(result, expectedResult);
    });
  });
}
