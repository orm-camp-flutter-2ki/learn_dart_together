import 'package:learn_dart_together/orm_240320/query.dart';
import 'package:collection/collection.dart';
import 'package:test/test.dart';

void main() {
  test('query 문제 1', () {
    transactions
        .where((transactions) => transactions.year == 2011)
        .toList()
        .sorted((a, b) => a.value.compareTo(b.value))
        .map((transaction) => transaction.trader.name)
        .forEach(print);
  });

  test('query 문제 2', () {
    final citys = transactions
        .map((transaction) => transaction.trader.city)
        .toSet()
        .toList();
    print('$citys');
  });


}