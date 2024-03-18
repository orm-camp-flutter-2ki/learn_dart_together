import 'package:learn_dart_together/24_03_18/word.dart';
import 'package:test/test.dart';

void main() {
  test('모음인가요?', () {
    Word vowel = Word(word: 'abcde');
    expect(vowel.isVowel(3), false);  // ok
    expect(vowel.isVowel(4), true);   // ok
    expect(vowel.isConsonant(2), true); //ok

  });
}
