import 'package:learn_dart_together/240318/word.dart';
import 'package:test/test.dart';

void main() {
  test('소문자 판별', () {
    Word a = Word('Hello world');
    expect(a.isVowel(1) == false, true); // 1번째 글자인 H는 모음이 아님
    expect(a.isVowel(2) == true, true); // 2번째 글자인 e는 모음이 맞음

    expect(a.isConsonant(1) == true, true); // 1번째 글자인 H는 모음이 아님
    expect(a.isConsonant(2) == false, true); // 2번째 글자인 e는 모음이 맞음

    a.word = 'HELLO WORLD'; // 대문자 테스트
    expect(a.isVowel(1) == false, true);
    expect(a.isVowel(2) == true, true);
    expect(a.isConsonant(1) == true, true);
    expect(a.isConsonant(2) == false, true);
  });
}
