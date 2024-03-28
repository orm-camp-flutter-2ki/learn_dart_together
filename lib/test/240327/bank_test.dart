import 'package:learn_dart_together/240327/bank.dart';
import 'package:test/test.dart';

void main() {
  test('bank tojson,fromjson test', () {
    Bank bank = Bank('홍길동', '서울시 어쩌구 저쩌구', '010-1111-2222');
    final json = bank.toJson();
    final fromjson = Bank.fromJson(json);

    expect(fromjson.name, equals(bank.name));
    expect(fromjson.address, equals(bank.address));
    expect(fromjson.phone, equals(bank.phone));
  });
}
