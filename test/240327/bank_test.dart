import 'package:dart_cli_practice/240327/model/bank.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Bank 클래스는', () {
    final expectedJson = {
      "name": "홍길동",
      "address": "서울시 어쩌구 저쩌구",
      "phone": "010-1111-2222"
    };
    final expectedBank = Bank('홍길동', '서울시 어쩌구 저쩌구', '010-1111-2222');

    test('fromJson 생성자로 역직렬화를 한다.', () {
      final actualBank = Bank.fromJson(expectedJson);

      expect(actualBank, equals(expectedBank));
    });

    test('toJson 메소드로 직렬화를 한다.', () {
      final actualJsonString = expectedBank.toJson();

      expect(actualJsonString, equals(expectedJson));
    });
  });
}
