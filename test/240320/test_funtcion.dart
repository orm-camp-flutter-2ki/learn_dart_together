import 'dart:math';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240320/funtcion.dart';
import 'package:test/test.dart';

void main() {
  test('Test1', () {
    List<String> test1 = transactions
        .where((transaction) => transaction.year == 2011)
        .toList()
        .sorted((a, b) => a.value.compareTo(b.value))
        .map((transaction) => transaction.trader.name)
        .toList();
    for (int i = 0; i < test1.length; i++) {
      if (i == 0) {
        expect(test1[i], equals('Brian'));
      } else if (i == 1) {
        expect(test1[i], equals('Raoul'));
      }
    }
  });

  test('Test2', () {
    Set<String> test2 = transactions.map((e) => e.trader.city).toSet();
    expect(test2.length, equals(2));
  });

  test('Test3', () {
    List<Transaction> test3 = transactions
        .where((transaction) => transaction.trader.city == "Cambridge")
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .toList();

    for (int i = 0; i < test3.length; i++) {
      if (i == 0) {
        expect(test3[i].trader.name, equals('Alan'));
      } else if (i == 1) {
        expect(test3[i].trader.name, equals('Brian'));
      } else if (i == 2) {
        expect(test3[i].trader.name, equals('Raoul'));
      } else if (i == 3) {
        expect(test3[i].trader.name, equals('Raoul'));
      }
    }
  });
  test('Test4', () {
    List<Transaction> test4 = transactions
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .toList();

    for (int i = 0; i < test4.length; i++) {
      if (i == 0) {
        expect(test4[i].trader.name, equals('Alan'));
      } else if (i == 1) {
        expect(test4[i].trader.name, equals('Brian'));
      } else if (i == 2) {
        expect(test4[i].trader.name, equals('Mario'));
      } else if (i == 3) {
        expect(test4[i].trader.name, equals('Mario'));
      } else if (i == 4) {
        expect(test4[i].trader.name, equals('Raoul'));
      } else if (i == 5) {
        expect(test4[i].trader.name, equals('Raoul'));
      }
    }
  });
  test('Test5', () {
    bool isMilan =
        transactions.any((transaction) => transaction.trader.city == 'Milan');
    expect(isMilan, equals(true));
  });
  test('Test6', () {
    int total = transactions
        .map((e) => e.value)
        .reduce((value, element) => value + element);
    expect(total, equals(4060));
  });
  test('Test7', () {
    int maxVal = transactions
        .map((e) => e.value)
        .reduce((value, element) => max(value, element));
    expect(maxVal, equals(1000));
  });
  test('Test8', () {
    int minVal = transactions
        .map((e) => e.value)
        .reduce((value, element) => min(value, element));
    expect(minVal, equals(300));
  });
}
