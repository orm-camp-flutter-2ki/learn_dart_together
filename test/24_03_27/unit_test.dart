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
