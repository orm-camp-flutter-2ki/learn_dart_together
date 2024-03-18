import 'package:learn_dart_together/24_03_18/word.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  test('모음 자음 확인메소드 입니다.', () {
    Word word1 = Word();
    word1.word = 'banana';
    expect(word1.isVowel(1),        true);
    expect(word1.isVowel(1), equals(true));      //equals 쓸 때랑 안쓸 때랑 차이점이 뭔가요?

    expect(word1.isConsonant(0), true);


  });


}
