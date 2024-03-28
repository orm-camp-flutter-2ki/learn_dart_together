import 'package:learn_dart_together/24_03_27/bank.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  Map<String, dynamic> customer = {
    "name": "홍길동",
    "address": "서울시 어쩌구 저쩌구",
    "phone": "010-1111-2222"
  };

  test('bank serialization', () {
    final customerHong = Bank.fromJson(customer);

    expect(customerHong.toJson().toString() == customer.toString(), true);
  });
}
