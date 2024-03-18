import 'package:learn_dart_together/24_03_18/word.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('isVowel test', () {
    // given
    Word word = Word();

    // when
    word.word = 'apple';

    // then
    expect(word.isVowel(0), true);
    expect(word.isVowel(1), false);
  });

  test('isConsonant test', () {
    // given
    Word word = Word();

    // when
    word.word = 'apple';

    // then
    expect(word.isConsonant(1), true);
    expect(word.isConsonant(4), false);
  });
}
