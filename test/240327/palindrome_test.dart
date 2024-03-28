import 'package:test/test.dart';

bool isPalindrome(String text) {
  // 입력된 문자열에서 공백과 구두점을 제거하고 모두 소문자로 변환
  String cleanedText = text.replaceAll(RegExp(r'[^ㄱ-힣a-zA-Z0-9]'), '').toLowerCase();
  return cleanedText == cleanedText.split('').reversed.join(''); // 문자열을 뒤집어서 회문인지 확인
}

void main() {
  group('Palindrome Tests', () {

    test('Korean palindrome', () {
      expect(isPalindrome("부부"), true);
    });

    test('English palindrome', () {
      expect(isPalindrome("Stats"), true);
    });

    test('Non-palindrome', () {
      expect(isPalindrome("딸기"), false);
      expect(isPalindrome("banana"), false);
    });

  });
}