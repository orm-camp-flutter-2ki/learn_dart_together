import 'package:learn_dart_together/24_03_20/trader.dart';
import 'package:test/test.dart';
import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_20/transaction.dart';


void main() {

  // '1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오'
  test('test1', () {
    List<String> sortedList1 = transaction.where((transaction) => transaction.year == 2011)
        .toList()
        .sorted((a,b) => a.value.compareTo(b.value))
        .map((e) => e.trader.name)
        .toList();

    List<String> expectedList1 = ['Brian', 'Raoul'];

    expect(sortedList1, equals(expectedList1));
  });

  // '2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오'
  test('test2', () {
    Set<String> cities = transaction
        .map((e) => e.trader.city)
        .toSet();

    Set<String> expectedSet = {'Cambridge', 'Milan'};
    Set<String> expectedSet2 = {'Milan', 'Cambridge'};

    expect(cities, equals(expectedSet));
    expect(cities, equals(expectedSet2));
  });

  // '3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오'
  test('test3', () {
    List<String> traders  = transaction
        .where((element) => element.trader.city == 'Cambridge')
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((element) => element.trader.name)
        .toSet()
        .toList();

    List<String> expectedList = ['Alan', 'Brian', 'Raoul'];

    expect(traders, equals(expectedList));
  });
}