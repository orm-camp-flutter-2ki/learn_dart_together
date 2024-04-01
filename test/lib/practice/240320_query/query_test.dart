import 'package:collection/collection.dart';
import 'package:learn_dart_together/practice/240320_query/model/trader.dart';
import 'package:learn_dart_together/practice/240320_query/model/transaction.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('연습문제 - 쿼리 (Query)', () {
    test('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오', () {
      // Given
      final expectedLength = 2;
      final expected = '(Brian, Raoul)';

      // When
      final Iterable<String> result = transactions
          .where((e) => e.year == 2011)
          .sorted((a, b) => a.value.compareTo(b.value))
          .map((e) => e.trader.name);

      // Then
      expect(result.length, expectedLength);
      expect(result.toString(), expected);
    });

    test('2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오', () {
      // Given
      final expectedLength = 2;
      final expectedResult = '{Cambridge, Milan}';

      // When
      final Set<String> cities = transactions.map((e) => e.trader.city).toSet();

      // Then
      expect(cities.length, equals(expectedLength));
      expect(cities.toString(), expectedResult);
    });
    test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오', () {
      // Given
      final expectedLength = 4;
      final expectedFirstName = 'Alan';
      final expectedLastName = 'Raoul';

      // When
      final result = transactions
          .where((e) => e.trader.city == 'Cambridge')
          .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
          .toSet();

      // Then
      expect(result.length, expectedLength);
      expect(result.first.trader.name, expectedFirstName);
      expect(result.last.trader.name, expectedLastName);
    });
  });
}

final transactions = [
  Transaction(Trader(name: "Brian", city: "Cambridge"), 2011, 300),
  Transaction(Trader(name: "Raoul", city: "Cambridge"), 2012, 1000),
  Transaction(Trader(name: "Raoul", city: "Cambridge"), 2011, 400),
  Transaction(Trader(name: "Mario", city: "Milan"), 2012, 710),
  Transaction(Trader(name: "Mario", city: "Milan"), 2012, 700),
  Transaction(Trader(name: "Alan", city: "Cambridge"), 2012, 950),
];
