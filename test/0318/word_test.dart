import 'package:learn_dart_together/0318/word.dart';
import 'package:test/test.dart';

void main() {
  test('a, e, i, o, u 확인', () {
    Word word = Word('HELLO');

    expect(word.isVowel(0), false);
    expect(word.isVowel(1), true);
  });
}