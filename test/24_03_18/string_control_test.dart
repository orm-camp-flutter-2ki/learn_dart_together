import 'package:test/test.dart';
import 'package:learn_dart_together/24_03_18/string_control.dart';

void main() {
  test('특정 위치의 글자 모음 체크', () {
    // Given
    Word w = Word('hello world');

    // When
    bool isVowel = w.isVowel(3);

    // Then
    expect(isVowel, true);
  });

  test('특정 위치의 글자 자음 체크', () {
    // Given
    Word w = Word('hello world');

    // When
    bool isConsonant = w.isConsonant(3);

    // Then
    expect(isConsonant, true);
  });
}
