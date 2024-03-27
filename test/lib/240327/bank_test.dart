import 'package:learn_dart_together/240327/data_source/bank_data.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('(필수) 연습문제 1', () {
    BankData bankData = BankData();

    test('디버깅하여 오류를 찾아낸다.', () {

      bankData.getBank(expectedData);

      // 1) type 'Null' is not a subtype of type 'String' in type cast
      // Bank.fromJson() 의 value 가 일치하지 않음을 수정
      test('type 에러 수정', () {

      });
    });
  });
}

final String expectedData = '''{
      "name": "홍길동",
      "address": "서울시 어쩌구 저쩌구",
      "phone": "010-1111-2222"
    }''';