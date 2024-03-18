import 'package:learn_dart_together/24_03_18/word_2.dart';
import 'package:test/test.dart';

void main() {
  test('0번째 글자가 자음인가?', () {
    var word = Word('pikachu');
    expect(word.isConsonant(0), isTrue);
  });

  test('1번째 글자가 자음인가?', () {
    var word = Word('pikachu');
    expect(word.isConsonant(1), isFalse);
  });
}
