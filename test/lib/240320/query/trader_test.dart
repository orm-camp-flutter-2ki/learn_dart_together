import 'dart:math';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240320/query/transaction.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('쿼리 연습 문제, ', () {
    test('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오', () {
      // Given
      final List<Transaction> list =
          transactions.where((element) => element.year == 2011).toList();
      final List<Transaction> sorted =
          list.sorted((a, b) => a.value.compareTo(b.value));
      final List<String> result = sorted.map((e) => e.trader.name).toList();

      // When
      List<String> expected = ['Brian', 'Raoul'];

      // Then
      expect(result, equals(expected));
    });

    test('2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오', () {
      // Given
      final Set<String> cities = {};
      transactions.forEach((element) {
        cities.add(element.trader.city);
      });
      // 또는,
      // for(var item in transactions ) {
      //   cities.add(item.trader.city);
      // }

      // When
      Set<String> expected = {'Cambridge', 'Milan'};

      // Then
      expect(cities, expected);
    });

    test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오', () {
      // Given
      final List<Transaction> list = transactions
          .where((element) => element.trader.city == 'Cambridge')
          .toList();

      final List<Transaction> sorted =
          list.sorted((a, b) => a.value.compareTo(b.value));

      // When
      List<String> result = sorted.map((e) => e.trader.name).toList();

      List<String> expected = ['Brian', 'Raoul', 'Alan', 'Raoul'];

      // Then
      expect(result, expected);
    });

    test('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오', () {
      final names = transactions.map((e) => e.trader.name).toList();
      names.sort((a, b) => a.compareTo(b));

      String firstExpected = 'Alan';
      String lastExpected = 'Raoul';

      expect(names.first, firstExpected);
      expect(names.last, lastExpected);
    });

    test('5. 밀라노에 거래자가 있는가?', () {
      final bool isMilan =
          transactions.any((element) => element.trader.city == 'Milan');

      expect(isMilan, true);
    });

    test('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오', () {
      final result = transactions
          .where((element) => element.trader.city == 'Cambridge')
          .map((element) => element.value)
          .toList();

      List<int> expected = [300, 1000, 400, 950];

      expect(result, expected);
    });

    test('7. 전체 트랜잭션 중 최대값은 얼마인가?', () {
      final result = transactions.reduce(
          (value, element) => value.value > element.value ? value : element).value;

      int expected = 1000;

      expect(result, expected);
    });

    test('8. 전체 트랜잭션 중 최소값은 얼마인가?', () {
      final result = transactions
          .map((e) => e.value)
          .reduce((value, element) => min(value, element));

      int expected = 300;

      expect(result, expected);
    });
  });
}
