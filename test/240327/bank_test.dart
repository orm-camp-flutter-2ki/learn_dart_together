

import 'package:test/test.dart';

import 'package:untitled2/240327/model/bank.dart';

void main() {
  Map<String, String> bankMap = {
    "nane": "홍길동",
    "address": "서울시 어쩌구 저쩌구",
    "phone": "010-1111-2222"
  };

  test('bank test', () {

    Bank bank = Bank.fromJson(bankMap);
    Map<String, dynamic> bankMapJson =
        bank.toJson();
    expect(bank.name == '홍길동', true);
  });
}