import 'dart:math';
import 'package:test/test.dart';
import 'package:learn_dart_together/24_03_20/trader.dart';

void main() {
  // 테스트를 위한 data
  List<Transaction> transactions = [
    Transaction(Trader("Brian", "Cambridge"), 2011, 300),
    Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
    Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
    Transaction(Trader("Mario", "Milan"), 2012, 710),
    Transaction(Trader("Mario", "Milan"), 2012, 700),
    Transaction(Trader("Alan", "Cambridge"), 2012, 950),
  ];

  test('문제 1번 테스트', () {
    var result = transactions
        .where((t) => t.year == 2011)
        .map((t) => t.trader.name)
        .toList();
    expect(result, containsAll(['Brian', 'Raoul']));
  });

  test('문제 2번 테스트', () {
    var result = transactions.map((t) => t.trader.city).toSet();
    expect(result, containsAll(['Cambridge', 'Milan']));
  });

  test('문제 3번 테스트', () {
    var result = transactions
        .where((t) => t.trader.city == "Cambridge")
        .map((t) => t.trader.name)
        .toSet()
        .toList();
    expect(result.length, greaterThanOrEqualTo(2));
  });

  test('문제 4번 테스트', () {
    var result = transactions.map((t) => t.trader.name).toSet().toList();
    expect(result, isNotEmpty);
  });

  test('문제 5번 테스트', () {
    var result = transactions.any((t) => t.trader.city == "Milan");
    expect(result, isTrue);
  });

  test('문제 6번 테스트', () {
    var result = transactions
        .where((t) => t.trader.city == "Cambridge")
        .map((t) => t.value)
        .toList();
    expect(result, isNotEmpty);
  });

  test('문제 7번 테스트', () {
    var maxValue = transactions.map((t) => t.value).reduce(max);
    expect(maxValue, isNotNull);
  });

  test('문제 8번 테스트', () {
    var minValue = transactions.map((t) => t.value).reduce(min);
    expect(minValue, isNotNull);
  });
}
