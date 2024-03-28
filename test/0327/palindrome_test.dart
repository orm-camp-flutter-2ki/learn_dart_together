import 'package:learn_dart_together/0327/palindrome.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';


void main () {
  group('palindrome', () {
    test('회문 문자열 넣었을 때', () {
      expect(palindromeCheck('level'), true);
      expect(palindromeCheck('12321'), true);
      expect(palindromeCheck('!@#@!'), true);
      expect(palindromeCheck('Was it a car or a cat I saw'), true);
    });

    test('회문이 아닌 문자열을 넣었을 때', () {
      expect(palindromeCheck('hello'), false);
      expect(palindromeCheck('i love cat'), false);
    });

    test('공백', () {
      expect(palindromeCheck('   '), true);
    });
  });
}