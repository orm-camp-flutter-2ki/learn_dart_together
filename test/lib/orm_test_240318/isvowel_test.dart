import 'package:learn_dart_together/orm_240318/isvowel.dart';
import 'package:test/test.dart';

void main(){
  test('모음 검사', () {
    Word word = Word('ice cream');

    expect(word.isVowel(0), true);
    expect(word.isVowel(1), false);
    expect(word.isVowel(2), true);
    expect(word.isVowel(3), false);
    expect(word.isVowel(4), false);
    expect(word.isVowel(5), false);
    expect(word.isVowel(6), true);
    expect(word.isVowel(7), true);
    expect(word.isVowel(8), false);
});

}