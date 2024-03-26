import 'package:learn_dart_together/240318/word.dart';
import 'package:test/test.dart';

void main() {
  test('Vowel test', () {
    Word word = Word('abc');

    expect(word.isVowel(0), equals(true));
    expect(word.isConsonant(1), equals(true));
    expect(word.isConsonant(2), equals(true));
  });
}
