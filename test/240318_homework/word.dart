import 'package:learn_dart_together/240318_homework/word.dart';
import 'package:test/test.dart';

void main() {
  test('isVowel Test', () {
    Word beautiful = Word('beautiful');
    expect(beautiful.isVowel(1) == false, true);
    expect(beautiful.isVowel(2) == true, true);
    for (int i = 1; i <= beautiful.word.length; i++) {
      print('${beautiful.word[i-1]}이(가) 모음 인가? : ${beautiful.isVowel(i)}');
      beautiful.isVowel(i);
    }

  });

  test('isConsonant Test', () {
    Word beautiful = Word('beautiful');
    expect(beautiful.isConsonant(1) == true, true);
    expect(beautiful.isConsonant(2) == false, true);
    for (int i = 1; i <= beautiful.word.length; i++) {
      print('${beautiful.word[i - 1]}이(가) 자음 인가? : ${beautiful.isConsonant(i)}');
      beautiful.isConsonant(i);
    }
  });
}
