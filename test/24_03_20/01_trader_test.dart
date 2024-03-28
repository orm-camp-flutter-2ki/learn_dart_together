import 'dart:math';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_20/01_trader.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오', () {
    //given
    final ascendingOrder = transactions
        .where((e) => e.year == 2011)
        .map((e) => e.trader.name)
        .sorted((a, b) => a.compareTo(b));

    //when
    final firstName = ascendingOrder.first;
    //then
    expect(firstName == 'Brian', true);
  });

  test('2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오', () {
    //given
    var setCity = transactions.map((e) => e.trader.city).toSet().toList();

    //when
    var listCity = transactions.map((e) => e.trader.city).toList();

    //then
    expect(setCity == listCity, false);
  });

  test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오', () {
    //given
    final nameOrder = transactions
        .where((e) => e.trader.city == 'Cambridge')
        .map((e) => e.trader.name)
        .sorted((a, b) => a.compareTo(b));

    //when
    final firstName = nameOrder.first;

    //then
    expect(firstName == 'Alan', true);
  });

  test('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오', () {
    //given
    final alphabetOrder =
        transactions.map((e) => e.trader.name).sorted((a, b) => a.compareTo(b));

    //when
    final firstTrader = alphabetOrder.first;

    //then
    expect(firstTrader == 'Alan', true);
  });

  test('5번 밀라노에 거래자가 있는가?', () {
    //given
    final isExisted = transactions.any((e) => e.trader.city == 'Milan');

    //when

    //then
    expect(isExisted == true, true);
  });

  test('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오', () {
    //given
    final allValue = transactions
        .where((e) => e.trader.city == 'Cambridge')
        .map((e) => e.value)
        .toList();

    //when
    final sumValue = allValue.reduce((v, e) => v + e);

    //then
    expect(sumValue == 2650, true);
  });

  test('7. 전체 트랜잭션 중 최대값은 얼마인가?', () {
    //given
    final maxValue =
        transactions.map((e) => e.value).reduce((v, e) => max(e, v));

    //when

    //then
    expect(maxValue == 1000, true);
  });

  test('8. 전체 트랜잭션 중 최소값은 얼마인가?', () {
    //given
    final minValue =
        transactions.map((e) => e.value).reduce((v, e) => min(v, e));

    //when

    //then
    expect(minValue == 300, true);
  });
}
