import 'dart:math';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_20/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUp(() {
    final transactions = [
      Transaction(Trader("Brian", "Cambridge"), 2011, 300),
      Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
      Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
      Transaction(Trader("Mario", "Milan"), 2012, 710),
      Transaction(Trader("Mario", "Milan"), 2012, 700),
      Transaction(Trader("Alan", "Cambridge"), 2012, 950),
    ];
  });

  group('transaction에 대하여', () {
    test('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열', () {
      // given when
      final result = transactions
          .where((transaction) => transaction.year == 2011)
          .toList()
          .sorted((a, b) => a.value.compareTo(b.value))
          .map((transaction) => transaction.trader.name);

      // then
      expect(result.toList(), ['Brian', 'Raoul']);
    });

    test('2. 거래자가 근무하는 모든 도시를 중복 없이 나열', () {
      // given when
      final result =
          transactions.map((transaction) => transaction.trader.city).toSet();

      // then
      expect(result.toList(), ['Cambridge', 'Milan']);
    });

    test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열', () {
      // given when
      final result = transactions
          .where((transaction) => transaction.trader.city == 'Cambridge')
          .toList()
          .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
          .map((transaction) => transaction.trader.name);

      // then
      expect(result.toList(), ['Alan', 'Brian', 'Raoul', 'Raoul']);
    });

    test('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열', () {
      // given when
      final result = transactions
          .map((transaction) => transaction.trader.name)
          .toList()
          .sorted((a, b) => a.compareTo(b));

      // then
      expect(result, ['Alan', 'Brian', 'Mario', 'Mario', 'Raoul', 'Raoul']);
    });

    test('5. 밀라노에 거래자가 있는가?', () {
      // given when
      final result =
          transactions.any((transaction) => transaction.trader.city == 'Milan');

      // then
      expect(result, true);
    });

    test('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션 값', () {
      // given when
      final result = transactions
          .where((transaction) => transaction.trader.city == 'Cambridge')
          .map((e) => e.value)
          .toList();

      // then
      expect(result, [300, 1000, 400, 950]);
    });

    test('7. 전체 트랜잭션 중 최댓값은 얼마인가?', () {
      // given when
      final result = transactions
          .map((transaction) => transaction.value)
          .reduce((v, e) => max(v, e));

      // then
      expect(result, 1000);
    });

    test('8. 전체 트랜잭션 중 최솟값은 얼마인가?', () {
      // given when
      final result = transactions
          .map((transaction) => transaction.value)
          .reduce((v, e) => min(v, e));

      // then
      expect(result, 300);
    });
  });
}
