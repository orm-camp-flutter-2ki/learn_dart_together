import 'package:learn_dart_together/0327/palindrome.dart';
import 'package:test/test.dart';

void main() {
  test('palindrome이 맞는지 확인', () {
    expect(isPalindrome('racecar'), true);
    expect(isPalindrome('raceecar'), true);
    expect(isPalindrome('hello'), false);
  });
}