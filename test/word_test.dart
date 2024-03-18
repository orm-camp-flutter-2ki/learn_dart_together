import 'package:learn_dart_together/24_03_18/word.dart';
import 'package:test/test.dart';

void main() {
  test('wordTest', () {
    Word word = Word('string');
    expect(word.isVowel(2), false);
    expect(word.isConsonant(2), true);
  });
}
