import 'dart:convert';

import 'package:learn_dart_together/24_03_27/bank.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('unit test', () {
    test('bank test', () async {
      Map<String, dynamic> b = {
        "name": "홍길동",
        "address": "서울시 어쩌구 저쩌구",
        "phone": "010-1111-2222"
      };

      final Bank bank = Bank.fromJson(b);

      expect(bank.name == '홍길동', true);
    });
  });
}