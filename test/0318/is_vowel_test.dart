import 'package:learn_dart_together/0318/is_vowel.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('모음을 구별하는지 test', () {
    Word wordVowel = Word(word: 'Test to distinguish vowels');
    expect(wordVowel.isVowel(5), false); // t, 통과
    expect(wordVowel.isVowel(6), true); // o, 통과
  });

  test('모음의 대문자 소문자 상관 없이 구별하는지 test', () {
    Word wordLower = Word(word: 'i love my cat');
    expect(wordLower.isVowel(5), true); // e, 통과

    Word wordUpper = Word(word: 'I LOVE MY CAT');
    expect(wordUpper.isVowel(5), true); // E, 통과
  });

  test('문자 범위가 아니거나, 문자가 아닌 것은 걸러내는지 test', () {
    Word notWord = Word(word: '26#52#79*&(#!*_+');
    expect(notWord.isVowel(3), false); // 문자가 아닌 것
    Word wordSpace = Word(word: '           ');
    expect(wordSpace.isVowel(5), false);
    Word lengthTestWord = Word(word: 'word');
    expect(lengthTestWord.isVowel(-5), false); // 음수
    expect(lengthTestWord.isVowel(42), false); // 길이 범위 외
  });
}
