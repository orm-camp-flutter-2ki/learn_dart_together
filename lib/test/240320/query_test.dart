import 'dart:math';
import 'package:collection/collection.dart';
import 'package:test/test.dart';
import '../../240320/query.dart';

void main() {
  group("query test", () {
    test('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오', () {
      //given
      List<String> sol1 = ['Brian', 'Raoul'];

      //when
      final problem1 = transactions
          .where((transaction) => transaction.year == 2011)
          // .toList() // 왜인지 생략 가능
          .sorted((a, b) => a.value.compareTo(b.value))
          .map((transaction) => transaction.trader.name)
        ..forEach(print);

      //then
      expect(problem1, sol1);
    });

    test('2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오', () {
      //given
      List<String> sol2 = ['Cambridge', 'Milan'];

      //when
      final problem2 = transactions
          .map((transaction) => transaction.trader.city)
          .toSet()
        ..forEach(print);

      //then
      expect(problem2, sol2);
    });

    test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오', () {
      //given
      var sol3 = [
        Trader('Alan', 'Cambridge'),
        Trader('Brian', 'Cambridge'),
        Trader('Raoul', 'Cambridge')
      ];

      //when
      final problem3 = transactions
          .where((transaction) => transaction.trader.city == "Cambridge")
          .toSet()
          .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
          .map((transaction) => transaction.trader)
        ..forEach(print);

      //then
      expect(problem3, sol3);
    });

    test('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오', () {
      //given
      List<String> sol4 = ['Alan', 'Brian', 'Mario', 'Raoul'];

      //when
      final problem4 = transactions
          .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
          .toSet()
          .map((transaction) => transaction.trader.name)
          .toSet()
        ..forEach(print);

      //then
      expect(problem4, sol4);
    });

    test('5. 밀라노에 거래자가 있는가?', () {
      //given
      bool sol5 = true;

      //when
      final problem5 =
          transactions.any((transaction) => transaction.trader.city == "Milan");

      //then
      expect(problem5, sol5);
    });

    test('6. 케임브리지에 거주하는 거래자의 모든 트랜잭션값을 출력하시오', () {
      //given
      List<int> sol6 = [300, 1000, 400, 950];

      //when
      final problem6 = transactions
          .where((transaction) => transaction.trader.city == "Cambridge")
          .map((transaction) => transaction.value)
        ..forEach(print);

      //then
      expect(problem6, sol6);
    });

    test('7. 전체 트랜잭션 중 최대값은 얼마인가?', () {
      //given
      int sol7 = 1000;

      //when
      final maxValue =
          transactions.map((transaction) => transaction.value).reduce(max);

      //then
      expect(maxValue, sol7);
    });

    test('8. 전체 트랜잭션 중 최소값은 얼마인가?', () {
      //given
      int sol8 = 300;

      //when
      final minValue =
          transactions.map((transaction) => transaction.value).reduce(min);

      //then
      expect(minValue, sol8);
    });
  });
}
