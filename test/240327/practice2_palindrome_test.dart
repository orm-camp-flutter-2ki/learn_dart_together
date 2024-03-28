import 'package:learn_dart_together/240327/practice2_palindrome.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('palindrome 찾기', () async {
    bool result = await palindrome('racecar');
    expect(result, equals(true));
  });

  test('palindrome 찾기', () async {
    bool result = await palindrome('flutter');
    expect(result, equals(false));
  });
}
