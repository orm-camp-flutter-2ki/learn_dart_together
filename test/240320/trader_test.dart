import 'package:test/test.dart';
import 'package:learn_dart_together/240320/trader.dart';

void main() {
  // Given
  final transactions = [
    Transaction(Trader("Brian", "Cambridge"), 2011, 300),
    Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
    Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
    Transaction(Trader("Mario", "Milan"), 2012, 710),
    Transaction(Trader("Mario", "Milan"), 2012, 700),
    Transaction(Trader("Alan", "Cambridge"), 2012, 950),
  ];

  test('1. 2011년에 발생한 거래를 값 순으로 정렬하고 거래자 이름 나열', () {
    // When
    final transactions2011 = transactions
        .where((transaction) => transaction.year == 2011)
        .toList();
    transactions2011.sort((a, b) => a.value.compareTo(b.value));
    final traders2011 = transactions2011.map((transaction) => transaction.trader.name);

    // Then
    expect(traders2011, equals(['Brian', 'Raoul']));
  });

  test('2. 모든 거래자가 근무하는 도시 나열', () {
    // When
    final cities = transactions.map((transaction) => transaction.trader.city).toSet();

    // Then
    expect(cities, equals({'Cambridge', 'Milan'}));
  });

  test('3. 케임브리지에서 근무하는 모든 거래자를 이름순으로 정렬하여 나열', () {
    // When
    final cambridgeTraders = transactions
        .where((transaction) => transaction.trader.city == "Cambridge")
        .map((transaction) => transaction.trader.name)
        .toSet() // 중복 제거
        .toList(); // Set을 다시 리스트로 변환
    cambridgeTraders.sort();
    // Then
    expect(cambridgeTraders, equals(['Alan', 'Brian', 'Raoul']));
  });

  test('4. 모든 거래자 이름을 알파벳순으로 나열', () {
    // When
    final allTraders = transactions.map((transaction) => transaction.trader.name).toSet().toList();
    allTraders.sort();

    // Then
    expect(allTraders, equals(['Alan', 'Brian', 'Mario', 'Raoul']));
  });

  test('5. 밀라노에 거래자가 있는지 확인', () {
    // When
    final milanTraderExists = transactions.any((transaction) => transaction.trader.city == "Milan");

    // Then
    expect(milanTraderExists, isTrue);
  });

  test('6. 케임브리지에 거주하는 거래자의 모든 거래값 출력', () {
    // When
    final cambridgeTransactions = transactions
        .where((transaction) => transaction.trader.city == "Cambridge")
        .map((transaction) => transaction.value)
        .toList();

    // Then
    print("케임브리지 거래: $cambridgeTransactions");
  });

  test('7. 전체 트랜잭션 중 최대값은 얼마인가?', () {
    // When
    final maxValue = transactions.map((transaction) => transaction.value).reduce((a, b) => a > b ? a : b);

    // Then
    expect(maxValue, equals(1000));
  });

  test('8. 전체 트랜잭션 중 최소값은 얼마인가?', () {
    // When
    final minValue = transactions.map((transaction) => transaction.value).reduce((a, b) => a < b ? a : b);

    // Then
    expect(minValue, equals(300));
  });
}