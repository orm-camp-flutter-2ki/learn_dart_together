import 'package:collection/collection.dart';
import 'package:learn_dart_together/240327/bark.dart';
import 'package:test/test.dart';

void main() {
  Map<String, String> bankMap = {
    "name": "홍길동",
    "address": "서울시 어쩌구 저쩌구",
    "phone": "010-1111-2222"
  };

  test('practice1', () {
    Bank bank = Bank.fromJson(bankMap);
    Map<String, dynamic> bankMapJson = bank.toJson();
    expect(bank.name == '홍길동', true);
    expect(DeepCollectionEquality().equals(bankMap, bankMapJson), true);
  });
}
