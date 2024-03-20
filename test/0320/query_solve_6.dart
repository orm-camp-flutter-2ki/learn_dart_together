import 'package:collection/collection.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션 값(value)을 출력하시오.
  // 예상 값 : Map 'Brian':300, 'Raoul':1000, 'Raoul':400, 'Alan':950

  test('query_solve_6', () {
    transactions
        .where((element) => element.trader.city == 'Cambridge')
        .sorted((a, b) => a.value.compareTo(b.value))
        .map((e) => e.value)
        .forEach((print));
  });
}
