import 'package:test/test.dart';
import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_20/transaction.dart';


void main() {
  // '1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오'
  test('test1', () {
    List<String> sortedList1 = transaction.where((transaction) =>
    transaction.year == 2011)
        .toList()
        .sorted((a, b) => a.value.compareTo(b.value))
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
    List<String> traders = transaction
        .where((element) => element.trader.city == 'Cambridge')
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((element) => element.trader.name)
        .toSet()
        .toList();

    List<String> expectedList = ['Alan', 'Brian', 'Raoul'];

    expect(traders, equals(expectedList));
  });

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  test('test4', () {
    List<String> allTraders = transaction
        .map((e) => e.trader.name)
        .toSet()
        .toList()
        .sorted();

    List<String> expectedList = ['Alan', 'Brian', 'Mario', 'Raoul'];

    expect(allTraders, equals(expectedList));
  });

  // 5. 밀라노에 거래자가 있는가?
  test('test5', () {
    bool milanTraderExists = transaction
        .where((e) => e.trader.city == 'Milan')
        .isNotEmpty;

    expect(milanTraderExists, equals(true));
  });

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  test('test6', () {
    List<int> cambridgeTransactions = transaction
        .where((e) => e.trader.city == 'Cambridge')
        .map((e) => e.value)
        .toList();

    List<int> expectedList = [300, 1000, 400, 950];

    expect(cambridgeTransactions, equals(expectedList));
  });

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  test('test7', () {
    List<int> maxTransactionValueList = transaction
        .map((e) => e.value)
        .toList()
        .sorted((a, b) => b.compareTo(a));

    final maxTransactionValue = maxTransactionValueList.isNotEmpty
        ? maxTransactionValueList.first : null;

    expect(maxTransactionValue, equals(1000));
  });
}