import 'package:learn_dart_together/24_03_27/top_level_method.dart';
import 'package:test/test.dart';

void main() {
  group('top level 메서드 테스트', () {

    test('회문 메서드 테스트', () {
       bool racecar = checkPalindrome('racecar');
       bool hello = checkPalindrome('hello');
       bool tomato = checkPalindrome('tomato');
       bool anna = checkPalindrome('anna');

       expect(racecar, true);
       expect(hello, false);
       expect(tomato, false);
       expect(anna, true);
    });
  });
}