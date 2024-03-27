import 'package:learn_dart_together/240327_homework/factorial.dart';
import 'package:learn_dart_together/240327_homework/palindrome.dart';
import 'package:learn_dart_together/240327_homework/plusMaxTwo.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

//동등 분할
//경계값 분석

void main() {
  test('회문 테스트', () {
    expect(isPalindrome('hello'), false);
    expect(isPalindrome('racecar'), true);
  });

  test('가장 큰 두 수', () {
    expect(plusMaxTwo([]), 0);
    expect(plusMaxTwo([1]), 1);
    expect(plusMaxTwo([0, 2]), 2);
    expect(plusMaxTwo([-1, -2, -8, -9]), -3);
  });

  test('팩토리얼', () {
    //expect(factorial(-1) == 1, false);
    expect(factorial(0), 1); //수학선생님이 그렇다고 한다.
    expect(factorial(1), 1);
    expect(factorial(5), 120);
  });
}
