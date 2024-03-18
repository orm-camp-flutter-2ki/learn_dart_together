import 'package:learn_dart_together/240318/string_class.dart';
import 'package:test/expect.dart';
import 'package:test/test.dart';

void main() {
  test('i번째 글자가 모음인지', () {
    Word word = Word('Hello');
    int i = 1;
    bool result = word.isVowel(i);

  //검증
    expect(result, true);
  });
}
