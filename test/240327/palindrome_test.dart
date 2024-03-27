import 'package:learn_dart_together/240327/palindrome.dart';
import 'package:test/test.dart';

void main() {
  group('Palindrome test', () {
    test('Success case', () {
      expect(isPalindrome('racecar'), true);
      expect(isPalindrome('AoA'), true);
      expect(isPalindrome('abcdefgfedcba'), true);
      expect(isPalindrome('1111111111111111'), true);
      expect(isPalindrome('토마토'), true);
    });

    test('Fail case', () {
      expect(isPalindrome('hello'), false);
      expect(isPalindrome('AAa'), false);
      expect(isPalindrome('abcdefghijklmn'), false);
      expect(isPalindrome('12345678910111213'), false);
      expect(isPalindrome('박세훈'), false);
    });
  });
}