import 'package:learn_dart_together/24_03_27/model/bank.dart';
import 'package:test/test.dart';

void main() {
  group('Bank 클래스', () {
    group('fromJson 네임드 생성자는', () {
      test('json 맵을 받아 Bank 인스턴스를 생성한다.', () {
        // Given
        final expectedMap = {
          'name': '국민은행',
          'address': '서울시 중구',
          'phone': '02-1234-5678',
        };

        // When
        final bank = Bank.fromJson(expectedMap);

        // Then
        // type 'Null' is not a subtype of type 'String' in type cast 에러로 Json Key값 변경
        expect(bank.name, expectedMap['name']);
        expect(bank.address, expectedMap['address']);
        expect(bank.phone, expectedMap['phone']);
      });

      test('json 맵의 키값이 null이면 예외를 던진다.', () {
        // Given
        final expectedMap = {
          'namee': '국민은행',
          'address': '서울시 중구',
          'phone': '02-1234-5678',
        };

        // When Then
        expect(() => Bank.fromJson(expectedMap), throwsA(predicate((e) => e is TypeError)));
      });
    });

    group('toJson 메서드는', () {
      test('Bank 인스턴스를 Map으로 변환한다.', () {
        // Given
        final bank = Bank('국민은행', '서울시 중구', '02-1234-5678');
        final expectedMap = {
          'name': '국민은행',
          'address': '서울시 중구',
          'phone': '02-1234-5678',
        };

        // When
        final actualMap = bank.toJson();

        // Then
        expect(actualMap, expectedMap);
      });
    });
  });
}
