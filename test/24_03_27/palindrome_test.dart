import 'package:learn_dart_together/24_03_27/palindrome.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('palindrome test', () {
    test('palindrome true test', () {
      String testString = 'racecar';

      expect(isPalindrome(testString), equals(true));
    });

    test('palindrome false test', () {
      String testString = 'raceacar';

      expect(isPalindrome(testString), equals(false));
    });
  });
}
