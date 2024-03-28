import 'package:learn_dart_together/24_03_27/bank.dart';
import 'package:test/test.dart';

void main() {
  test('bank 역직렬', () {
    final json = {
      'name': '홍길동',
      'address': '충주시 어쩌구 저쩌구',
      'phone': '010-1111-2222',
    };

    final bank = Bank.fromJson(json);

    expect(json['name'], bank.name);
    expect(json['address'], bank.address);
    expect(json['phone'], bank.phone);
  });

  test('bank 직렬', () {
    final bank = Bank(
      '홍길동',
      '충주시 어쩌구 저쩌구',
      '010-1111-2222',
    );

    final json = bank.toJson();

    expect(json['name'], bank.name);
    expect(json['address'], bank.address);
    expect(json['phone'], bank.phone);
  });
}
