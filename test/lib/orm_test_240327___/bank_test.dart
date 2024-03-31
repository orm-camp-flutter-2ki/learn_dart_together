import 'package:learn_dart_together/orm_240327/bank.dart';
import 'package:learn_dart_together/orm_240327/extended_data.dart';
import 'package:test/test.dart';

void main() {
  test('bank test 역직렬화', () async {
    Bank bank1 = Bank("홍길동", "서울시 어쩌구 저쩌구", "010-1111-2222");
    final idCard1 = idCard;

    final bank2 = Bank.fromJson(idCard1);
    expect(bank1.name == bank2.name, true);
    //type 'Null' is not a subtype of type 'String' in type cast
  });
  test('bank test 직렬화', () {
    Bank bank = Bank("홍길동", "서울시 어쩌구 저쩌구", "010-1111-2222");
    final bank1 = bank.toJson().toString();
    // print(bank1);
    // print(idCard);
    final results = bank1.compareTo(idCard.toString());
    expect(results, 0);
  });
}
