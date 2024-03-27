import 'package:learn_dart_together/240327/bank.dart';
import 'package:test/test.dart';

void main() {
  Map<String, dynamic> expected = {
    "name": "홍길동",
    "address": "서울시 어쩌구 저쩌구",
    "phone": "010-1111-2222"
  };
  test('Bank Test', () {
    final instance = Bank.fromJson(expected);

    expect(instance.toJson().toString() == expected.toString(), true);
  });
}