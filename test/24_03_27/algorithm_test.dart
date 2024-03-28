import 'package:learn_dart_together/24_03_27/factorial.dart';
import 'package:learn_dart_together/24_03_27/palindrome.dart';
import 'package:learn_dart_together/24_03_27/sumOfTopTwo.dart';
import 'package:test/test.dart';

void main() {
  test('회문 테스트', () {
    expect(isPalindrome('12321'), equals(true));
    expect(isPalindrome('1221'), equals(true));
    expect(isPalindrome('tired'), equals(false));
    expect(isPalindrome('fatigue'), equals(false));
  });

  group('sumOfTopTwo 메서드 테스트', () {
    test('input 값 테스트', () {
      expect(sumOfTopTwo([1, 2, 3, 4]), equals(7));
      expect(sumOfTopTwo([9, 3, 5, 7]), equals(16));
      expect(sumOfTopTwo([5, 5, 5, 5]), equals(10)); // 같은 수 중복 테스트
      expect(sumOfTopTwo([-1, -2, -3, -4]), equals(-3)); // 음수 테스트
      expect(sumOfTopTwo([-10, 0, 10, 20]), equals(30)); // 음수와 양수가 혼합된 테스트
      expect(sumOfTopTwo([1000, 2000, 3000]), equals(5000)); // 큰 수 테스트
    });

    test('ThrowArgumentError 유도해보기', () {
      expect(() => sumOfTopTwo([]), throwsArgumentError); // 빈 배열
      expect(() => sumOfTopTwo([1]), throwsArgumentError); // 한 개의 요소만 있는 배열
    });
  });

  group('팩토리얼 테스트', () {
    test('Factorial 0 은 1 이 되어야 한다', () {
      expect(factorial(0), equals(1));
    });

    test('Factorial 1 은 1 이 되어야 한다.', () {
      expect(factorial(1), equals(1));
    });

    test('Factorial of a positive number', () {
      expect(factorial(5), equals(120));
    });
  });
}
