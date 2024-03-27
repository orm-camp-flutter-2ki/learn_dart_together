import 'dart:convert';

import 'package:learn_dart_together/24_03_27/bank.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('unit test', () {
    test('Q1. bank test', () {
      Map<String, dynamic> b = {
        "name": "홍길동",
        "address": "서울시 어쩌구 저쩌구",
        "phone": "010-1111-2222"
      };

      final Bank bank = Bank.fromJson(b);

      expect(bank.name == '홍길동', true);
    });
  });

  test('Q2. palindrome test', () {
    expect(palindromeCheck('racecar') == true, true);
  });

  test('Q3. 가장 큰 두 수의 합 test', () {
    final List<int> numbers = [1, 2, 4, 6, 9, 20];

    expect(bestSum(numbers) == 29, true);
  });
}

/// 주어진 정수 배열 또는 리스트에서 가장 큰 두 수를 찾아 더한 값을 반환하는 함수를 작성하세요
int bestSum(List<int> numbers) {
  numbers.sort((a, b) => b.compareTo(a));

  return numbers[0] + numbers[1];
}

bool palindromeCheck(String text) {
  int start = 0;
  int end = text.length - 1;

  while (start < end) {
    // 시작과 끝에서 한 글자씩 비교. 다르면 false
    if (text[start] != text[end]) {
      return false;
    }
    start++;
    end--;
  }

  return true;
}
