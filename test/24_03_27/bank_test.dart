import 'dart:convert';

import 'package:learn_dart_together/24_03_27/bank.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Bank 클래스 생성후 직렬화 테스트', () {
    final expected =
        '{"name":"홍길동","address":"서울시 어쩌구 저쩌구","phone":"010-1111-2222"}';
    final bank =
        Bank(name: "홍길동", address: "서울시 어쩌구 저쩌구", phone: "010-1111-2222");
    final json = jsonEncode(bank); // Bank 객체를 String 형으로
    expect(json, expected); //
  });

  test('Bank 클래스 생성후 역직렬화 테스트', () {
    final expected =
    Bank(name: "홍길동", address: "서울시 어쩌구 저쩌구", phone: "010-1111-2222");
    final bank = Bank.fromJson(
        {"name": "홍길동", "address": "서울시 어쩌구 저쩌구", "phone": "010-1111-2222"});

    expect(bank, expected); //          Bank 객체를 비교
  });
}

//직렬 화 = 객체를 출력가능하게
//역직렬 화 = 제이슨을 객체로