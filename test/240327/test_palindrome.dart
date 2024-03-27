import 'package:learn_dart_together/240327/palindrome.dart';
import 'package:test/test.dart';

void main() {
  test('practice1', () {
    expect(palindrome('racecar'), true);
    expect(palindrome('hello'), false);
  });
}
