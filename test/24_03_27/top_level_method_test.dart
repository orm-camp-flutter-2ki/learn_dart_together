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

    test('getMaxSum 메서드 테스트', () {
      List<int> numbers = [1,2,5,3,9,8];
      int result = getMaxSum(numbers);
      int expectValue = 17;

      expect(result, expectValue);

      //빈배열 전달시 0을 리턴함
      List<int> numbersEmpty = [];
      int result2 = getMaxSum(numbersEmpty);
      int expectValue2 = 0;

      expect(result2, expectValue2);

      //length 가 1이면 그값만 전달
      List<int> numbersOne = [100];
      int result3 = getMaxSum(numbersOne);
      int expectValue3 = 100;

      expect(result3, expectValue3);

      //추가테스트
      List<int> numbers4 = [10,1,2,5,3,9,8,10];
      int result4 = getMaxSum(numbers4);
      int expectValue4 = 20;

      expect(result4, expectValue4);
    });

    test('factorial 메서드 테스트', () {
      int result = getFactorial(5);
      int expectValue = 120;

      expect(result, expectValue);
      
      int result2 = getFactorial(10);
      int expectValue2 = 3628800;

      expect(result2, expectValue2);
    });
  });
}