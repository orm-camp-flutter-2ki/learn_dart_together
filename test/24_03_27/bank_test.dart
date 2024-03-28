import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_27/bank.dart';
import 'package:test/test.dart';

void main() {
  Map<String, String> bankData = {
    // 제네릭 키 밸류 값
    "name": "홍길동",
    "address": "서울시 어쩌구 저쩌구",
    "phone": "010-1111-2222"
  };

  test('bank test', () {
    Bank bank = Bank.fromJson(bankData);
    Map<String, dynamic> bankDataToJson = bank.toJson();
    expect(bank.name == "홍길동", true);
    expect(DeepCollectionEquality().equals(bankData, bankDataToJson), true);
  });
}
