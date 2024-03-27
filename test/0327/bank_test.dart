import 'dart:convert';

import 'package:learn_dart_together/0327/bank.dart';
import 'package:test/test.dart';

final String jsonData = '{"name":"홍길동","address":"서울시 어쩌구 저쩌구","phone":"010-1111-2222"}';

void main() {
  Map<String, dynamic> decodedJson = jsonDecode(jsonData);
  Bank bank = Bank.fromJson(decodedJson);

  test('JSON to Bank', () {
    expect(bank.name, '홍길동');
    expect(bank.address, '서울시 어쩌구 저쩌구');
    expect(bank.phone, '010-1111-2222');
  });

  test('Bank to JSON', () {
    Map<String, dynamic> json = bank.toJson();
    String encodedJson = jsonEncode(json);

    expect(encodedJson, jsonData);
  });
}