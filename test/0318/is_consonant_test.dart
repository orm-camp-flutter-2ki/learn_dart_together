import 'package:learn_dart_together/0318/is_consonant.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('모음을 넣었을 때 구별하는지 test', () {
    IsConsonant testVowels = IsConsonant(word: 'aeiuo');
    expect(testVowels.isConsonant(0), false);
    expect(testVowels.isConsonant(1), false);
    expect(testVowels.isConsonant(2), false);
    expect(testVowels.isConsonant(3), false);
    expect(testVowels.isConsonant(4), false);
    // expect(testVowels.isConsonant(4), true); // error
  });

  test('자음을 넣었을 때 대소문자 관계 없이 작동 하는지', () {
    IsConsonant testConsonant = IsConsonant(word: 'bBcC');

    expect(testConsonant.isConsonant(0), true);
    expect(testConsonant.isConsonant(1), true);
    expect(testConsonant.isConsonant(2), true);
    expect(testConsonant.isConsonant(3), true);
    // expect(testConsonant.isConsonant(3), false); // error
  });

  test('문자 범위가 아니거나, 문자가 아닌 것은 걸러내는지 test', () {
    IsConsonant notWord = IsConsonant(word: '2%#4^*');
    expect(notWord.isConsonant(4), false); // 문자가 아닌 것
    IsConsonant wordSpace = IsConsonant(word: '           ');
    expect(wordSpace.isConsonant(5), false); // 공백
  });
}
