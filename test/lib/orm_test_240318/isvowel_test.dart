import 'package:learn_dart_together/orm_240318/isvowel.dart';
import 'package:test/test.dart';

void main(){
  test('모음 검사', () {
    Word word = Word(word: 'cream');
    // 1번째 c 검사
    expect(word.isVowel(0), false);
    // 2번째 r 검사
    expect(word.isVowel(1), false);
    // 3번째 e 검사
    expect(word.isVowel(2), true);
    // 4번째 a 검사
    expect(word.isVowel(3), true);
    // 5번째 m 검사
    expect(word.isVowel(4), false);
});
  test('자음 검사', () {
    Word word2 = Word( word: 'jambo');
    // 1번째 j 검사
    expect(word2.isConsonant(0), true);
    // 2번째 a 검사
    expect(word2.isConsonant(1), false);
    // 3번째 m 검사
    expect(word2.isConsonant(2), true);
    // 4번째 b 검사
    expect(word2.isConsonant(3), true);
    // 5번쨰 o 검사
    expect(word2.isConsonant(4), false);
  });

}