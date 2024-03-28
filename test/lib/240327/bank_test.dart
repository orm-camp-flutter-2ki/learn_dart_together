import 'dart:convert';

import 'package:learn_dart_together/240327/data_source/bank_data.dart';
import 'package:learn_dart_together/240327/model/bank.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('(필수) 연습문제 1', () {
    BankData bankData = BankData();

    String name = '홍길동';
    String address = '서울시 어쩌구 저쩌구';
    String phone = '010-1111-2222';

    group('디버깅하여 오류를 찾아내고 수정한다.', () {

      // 1) type 'Null' is not a subtype of type 'String' in type cast
      test('Bank.fromJson() 의 value 가 일치하지 않음을 수정', () {

        // When
        var data = bankData.getBank(expectedData);

        String actualName = data.name;
        String actualAddress = data.address;
        String actualPhone = data.phone;

        // Then
        expect(actualName, name);
        expect(actualAddress, address);
        expect(actualPhone, phone);
      });


      // 2) type 'Null' is not a subtype of type 'String' in type cast
      test('toJson() 의 key 가 일치하지 않음을 수정', () {
        // Given
        var newData = Bank(name: name, address: address, phone: phone).toJson();
        final jsonData = jsonEncode(newData);

        final dataDecode = jsonDecode(jsonData) as Map<String, dynamic>;

        // When
        final actualName = Bank.fromJson(dataDecode).name;
        final actualAddress = Bank.fromJson(dataDecode).address;
        final actualPhone = Bank.fromJson(dataDecode).phone;


        // Then
        expect(actualName, name);
        expect(actualAddress, address);
        expect(actualPhone, phone);
      });

      test('동등성 비교', () {
        var bank1 = Bank(name: name, address: address, phone: phone);
        var bank2 = Bank(name: name, address: address, phone: phone);

        bool expected = true;

        expect(bank1 == bank2, expected);
      });
    });
  });
}

final String expectedData = '''{
      "name": "홍길동",
      "address": "서울시 어쩌구 저쩌구",
      "phone": "010-1111-2222"
    }''';