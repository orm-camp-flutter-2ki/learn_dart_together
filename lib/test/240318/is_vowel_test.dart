import 'package:learn_dart_together/240318/is_vowel.dart';
import 'package:test/test.dart';

void main() {
  test('isVowel Test', () {
    Word vowel = Word('voweltest');
    expect(vowel.isVowel(2), true);
    expect(vowel.isVowel(3), false);
  });
  test('isConsonant Test', () {
    Word consonant = Word('consonanttest');
    expect(consonant.isConsonant(3), true);
    expect(consonant.isConsonant(2), false);
  });
}
