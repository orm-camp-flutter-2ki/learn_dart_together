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
}