import 'package:learn_dart_together/24_03_18/word.dart';
import 'package:test/test.dart';

void main() {
  test('0번째 글자가 모음인가?', () {
    var word = Word('pikachu');
    expect(word.isVowel(0), isFalse);
  });

  test('1번째 글자가 모음인가?', () {
    var word = Word('pikachu');
    expect(word.isVowel(1), isTrue);
  });
}
