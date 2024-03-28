import 'package:test/test.dart';
import 'package:learn_dart_together/240327/bank.dart';

void main() {
  group('Bank fromJson Test', () {
    test('Should parse JSON correctly', () {
      // 주어진 입력값
      Map<String, dynamic> jsonData = {
        "name": "홍길동",
        "address": "서울시 어쩌구 저쩌구",
        "phone": "010-1111-2222"
      };

      // Bank.fromJson 메서드 호출
      Bank bank = Bank.fromJson(jsonData);

      // 예상되는 결과
      String expectedName = "홍길동";
      String expectedAddress = "서울시 어쩌구 저쩌구";
      String expectedPhone = "010-1111-2222";

      // 예상되는 결과와 실제 결과 비교
      expect(bank.name, expectedName);
      expect(bank.address, expectedAddress);
      expect(bank.phone, expectedPhone);
    });
  });
}
