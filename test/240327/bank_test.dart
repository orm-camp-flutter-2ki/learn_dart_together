import 'package:learn_dart_together/240327/bank.dart';
import 'package:test/test.dart';

void main() {
  test('bank 테스트', () {
    final json = {
      "name": "홍길동",
      "address": "서울시 어쩌구 저쩌구",
      "phone": "010-1111-2222"
    };

    Bank bank = Bank.fromJson(json);

    expect(bank.name == '홍길동', true);
    expect(bank.address == '서울시 어쩌구 저쩌구', true);
    expect(bank.phone == '010-1111-2222', true);

    expect(bank.toJson(), json);
  });
}
