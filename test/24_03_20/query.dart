import 'package:learn_dart_together/24_03_19/-2/file_service.dart';
import 'package:learn_dart_together/24_03_20/query.dart';
import 'package:learn_dart_together/24_03_20/trader.dart';
import 'package:test/test.dart';

void main() {
  group('Query 클래스', () {
    Query query = Query();
    group('firstTask 메소드는', () {
      test('2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하여 반환한다.', () {
        // Given
        final expected = ["Brian", "Raoul"];

        // When
        final result = query.firstTask();

        // Then
        expect(result, expected);
      });
    });

    group('secondTask 메소드는', () {
      test('거래자가 근무하는 모든 도시를 중복 없이 나열하여 반환한다.', () {
        // Given
        final expected = ["Cambridge", "Milan"];

        // When
        final result = query.secondTask();

        // Then
        expect(result, expected);
      });
    });

    group('thirdTask 메소드는', () {
      test('케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 반환한다.', () {
        // Given
        final expected = [
          Trader("Alan", "Cambridge"),
          Trader("Brian", "Cambridge"),
          Trader("Raoul", "Cambridge"),
          Trader("Raoul", "Cambridge")
        ];

        // When
        final result = query.thirdTask();

        // Then
        expect(result, expected);
      });
    });

    group('fourthTask 메소드는', () {
      test('모든 거래자의 이름을 알파벳순으로 정렬해서 반환한다.', () {
        // Given
        final expected = ["Alan", "Brian", "Mario", "Raoul"];

        // When
        final result = query.fourthTask();

        // Then
        expect(result, expected);
      });
    });

    group('fifthTask 메소드는', () {
      test('밀라노에 거래자가 있는지 여부를 반환한다.', () {
        // Given
        final expected = true;

        // When
        final result = query.fifthTask();

        // Then
        expect(result, expected);
      });
    });

    group('sixthTask 메소드는', () {
      test('케임브리지에 거주하는 거래자의 모든 트랜잭션값을 나열하여 반환한다.', () {
        // Given
        final expected = [300, 1000, 400, 950];

        // When
        final result = query.sixthTask();

        // Then
        expect(result, expected);
      });
    });
  });
}
