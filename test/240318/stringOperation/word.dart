import 'package:learn_dart_together/240318/stringOperation/word.dart';
import 'package:test/test.dart';

void main() {
  test('homeWorkTest', () {
    Word wordTest = Word();

    wordTest.word = 'abcdefg';

    bool test1 = wordTest.isVowel(0);
    expect(test1, equals(true));
    bool test2 = wordTest.isVowel(1);
    expect(test2, equals(false));
    bool test3 = wordTest.isVowel(3);
    expect(test3, equals(false));


    bool test4 = wordTest.isConsonant(0);
    expect(test4, equals(false));
    bool test5 = wordTest.isConsonant(1);
    expect(test5, equals(true));

  });
}