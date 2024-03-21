import 'dart:math';

import 'package:collection/collection.dart';
import 'package:dart_cli_practice/240320/practice/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final transactions = [
    Transaction(Trader("Brian", "Cambridge"), 2011, 300),
    Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
    Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
    Transaction(Trader("Mario", "Milan"), 2012, 710),
    Transaction(Trader("Mario", "Milan"), 2012, 700),
    Transaction(Trader("Alan", "Cambridge"), 2012, 950),
  ];

  Function eq = DeepCollectionEquality().equals;

  test('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오', () {
    final expectResult = ['Brian', 'Raoul'];

    final actualResult = transactions
        .where((e) => e.year == 2011)
        .sorted((a, b) => a.value.compareTo(b.value))
        .map((e) => e.trader.name)
        .toList();

    expect(eq(actualResult, expectResult), true);
  });

  test('2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오', () {
    final expectResult = {'Cambridge', 'Milan'};

    final actualResult = transactions
        .map((e) => e.trader.city)
        .toSet();

    expect(eq(actualResult, expectResult), true);
  });

  test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오', () {
    final expectResult = {'Alan', 'Brian', 'Raoul'};

    final actualResult = transactions
        .where((e) => e.trader.city == 'Cambridge')
        .map((e) => e.trader.name)
        .sorted(Comparable.compare)
        .toSet();

    expect(eq(actualResult, expectResult), true);
  });

  test('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오', () {
    final expectResult = {'Alan', 'Brian', 'Mario', 'Raoul'};

    final actualResult = transactions
        .map((e) => e.trader.name)
        .sorted(Comparable.compare)
        .toSet();

    expect(eq(actualResult, expectResult), true);
  });

  test('5. 밀라노에 거래자가 있는가?', () {
    final expectResult = true;

    final actualResult = transactions
        .any((e) => e.trader.city == "Milan");

    expect(actualResult, expectResult);
  });

  test('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오', () {
    final expectResult = [300, 1000, 400, 950];

    final actualResult = transactions
        .where((e) => e.trader.city == 'Cambridge')
        .map((e) => e.value)
        .toList();

    expect(eq(actualResult, expectResult), true);
  });

  test('7. 전체 트랜잭션 중 최대값은 얼마인가?', () {
    final expectResult = 1000;

    final actualResult = transactions
        .map((e) => e.value)
        .reduce(max);

    expect(eq(actualResult, expectResult), true);
  });

  test('8. 전체 트랜잭션 중 최소값은 얼마인가?', () {
    final expectResult = 300;

    final actualResult = transactions
        .map((e) => e.value)
        .reduce(min);

    expect(eq(actualResult, expectResult), true);
  });
}
