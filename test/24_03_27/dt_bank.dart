import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_27/bank.dart';
import 'package:test/test.dart';

void main() {
  group('Bank 클래스의', () {

    test('fromJson()는 Json(Map)을 통해 Bank를 생성한다.', () async {
      // Given
      final expected = Bank('홍길동', '서울시 어쩌구 저쩌구', '010-1111-2222');
      Map<String, dynamic> json = {
        "name": "홍길동",
        "address": "서울시 어쩌구 저쩌구",
        "phone": "010-1111-2222"
      };

      // When
      final result = Bank.fromJson(json);

      // Then
      expect(result == expected, isTrue);
    });

    test('toJson()는 Bank로 Json(Map)을 생성한다.', () async {
      // Given
      final bank = Bank('홍길동', '서울시 어쩌구 저쩌구', '010-1111-2222');
      Map<String, dynamic> expected = {
        "name": "홍길동",
        "address": "서울시 어쩌구 저쩌구",
        "phone": "010-1111-2222"
      };

      // When
      final result = bank.toJson();

      // Then
      expect(MapEquality().equals(result, expected), isTrue);
    });
  });
}
