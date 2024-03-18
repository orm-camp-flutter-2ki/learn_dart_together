import 'package:test/test.dart';
import '/Users/jungeunhan/learn_dart_together/lib/240318/word.dart';

void main() {
  test('Vowel test', () {
    Word word = Word('abc');

    expect(word.isVowel(0), equals(true));
    expect(word.isConsonant(1), equals(true));
    expect(word.isConsonant(2), equals(true));
  });
}
