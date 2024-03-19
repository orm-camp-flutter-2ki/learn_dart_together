import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_18/num_excercise.dart';
import 'package:test/test.dart';
void main(){

  test('자음인지 여부를 확인하는 테스트', (){

    Word word = Word(word:'abc');
    expect(word.isVowel(1), equals(true));
    expect(word.isConsonant(2), equals(true));
  });
}