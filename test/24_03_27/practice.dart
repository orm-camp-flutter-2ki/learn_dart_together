import 'package:learn_dart_together/24_03_27/practice.dart';
import 'package:test/test.dart';

void main() {
  group('Palindrome extension의', () {
    // bool isPalindrome()
    test('isPalindrome()는 호출한 문자열이 팰린드롬인지 판별한다.', () {
      // Given
      final evenPalindrome = "abcddcba";
      final oddPalindrome = "abcdcba";
      final evenNotPalindrome = "abcddcbc";
      final oddNotPalindrome = "abcdcbc";

      // When
      final resultOfEven = evenPalindrome.isPalindrome();
      final resultOfOdd = oddPalindrome.isPalindrome();
      final resultOfEvenFail = evenNotPalindrome.isPalindrome();
      final resultOfOddFail = oddNotPalindrome.isPalindrome();

      // Then
      expect(resultOfEven, isTrue);
      expect(resultOfOdd, isTrue);
      expect(resultOfEvenFail, isFalse);
      expect(resultOfOddFail, isFalse);
    });
  });

  group('Sum extension의', () {
    // int sumOfTop(int count)
    test('sumOfTop(int count)는 호출한 리스트에서 가장 큰 count개 원소의 합을 반환한다.', () {
      // Given
      final nums = [1, 3, -4, 9, 20, -40, 8, 18];
      final numsOnlyOneElement = [1];

      final expectedSumOfTopTwo = 38;
      final expectedSumOfTopThree = 47;
      final expectedSumOfOneElement = 1;

      // When
      final sumOfTopTwo = nums.sumOfTop(2);
      final sumOfTopThree = nums.sumOfTop(3);
      final sumOfOneElement = numsOnlyOneElement.sumOfTop(3);

      // Then
      expect(sumOfTopTwo, equals(expectedSumOfTopTwo));
      expect(sumOfTopThree, equals(expectedSumOfTopThree));
      expect(sumOfOneElement, equals(expectedSumOfOneElement));
    });
  });

  //int factorial({required int number, int sum = 1})
  test('factorial({required int number, int sum = 1})는 number!(팩토리얼)을 반환한다.',
      () {
    // Given
    final number = 5;
    final expected = 1 * 2 * 3 * 4 * 5;

    // When
    final result = factorial(number);

    // Then
    expect(result, equals(expected));
  });
}
