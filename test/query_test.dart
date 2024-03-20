import 'dart:math';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_20/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  group('query test', () {
    test('1', () {
      expect(
          transactions
              .where((e) => e.year == 2011)
              .toList()
              .sorted((a, b) => a.value.compareTo(b.value))
              .map((e) => e.trader.name),
          ['Brian', 'Raoul']);
    });
    test('2', () {
      expect(transactions.map((e) => e.trader.city).toSet(), ['Cambridge', 'Milan']);
    });
    test('3', () {
      expect(
          transactions
              .where((e) => e.trader.city == "Cambridge")
              .map((e) => e.trader.name)
              .toList()
              .sorted((a, b) => a.compareTo(b)),
          ['Alan', 'Brian', 'Raoul', 'Raoul']);
    });
    test('4', () {
      expect(transactions.map((e) => e.trader.name).toList().sorted((a, b) => a.compareTo(b)),
          ['Alan', 'Brian', 'Mario', 'Mario', 'Raoul', 'Raoul']);
    });
    test('5', () {
      expect(transactions.any((e) => e.trader.city == "Milan"), true);
    });
    test('6', () {
      expect(transactions.where((e) => e.trader.city == "Cambridge").map((e) => e.value),
          [300, 1000, 400, 950]);
    });
    test('7', () {
      expect(transactions.map((e) => e.value).reduce(max), 1000);
    });
    test('8', () {
      expect(transactions.map((e) => e.value).reduce(min), 300);
    });
  });
}
