import 'dart:math';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240320/trader.dart';
import 'package:test/test.dart';

void main() {
  final transactions = [
    Transaction(Trader('Brian', 'Cambridge'), 2011, 300),
    Transaction(Trader('Raoul', 'Cambridge'), 2012, 1000),
    Transaction(Trader('Raoul', 'Cambridge'), 2011, 400),
    Transaction(Trader('Mario', 'Milan'), 2012, 710),
    Transaction(Trader('Mario', 'Milan'), 2012, 700),
    Transaction(Trader('Alan', 'Cambridge'), 2012, 950),
  ];

  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  test('First Test', () {
    transactions
        .where((element) => element.year == 2011)
        .toList()
        .sorted((a, b) => a.value.compareTo(b.value))
        .map((element) => element.trader.name)
        .forEach(print);
  });

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  test('Second Test', () {
    transactions
        .map((element) => element.trader.city)
        .toSet()
        .forEach(print);
  });

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  test('Third Test', () {
    transactions
        .where((element) => element.trader.city == 'Cambridge')
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((element) => element.trader.name)
        .forEach(print);
  });

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  test('Fourth Test', () {
    transactions
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((element) => element.trader.name)
        .forEach(print);
  });

  // 5. 밀라노에 거래자가 있는가?
  test('Fifth Test', () {
    if (transactions.where((element) => element.trader.city == 'Milan').isNotEmpty) {
      print('밀라노에 거래자가 있습니다');
    } else {
      print('밀라노에 거래자가 없습니다.');
    }
  });

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  test('Sixth Test', () {
    transactions
        .where((element) => element.trader.city == 'Cambridge')
        .forEach(print); // toString() 활용
  });

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  test('Seventh Test', () {
    print(transactions
        .map((element) => element.value)
        .reduce((e, v) => max(e, v)));
  });

  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  test('Eighth Test', () {
    print(transactions
        .map((element) => element.value)
        .reduce((e, v) => min(e, v)));
  });
}