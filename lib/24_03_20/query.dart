import 'package:learn_dart_together/24_03_20/trader.dart';
import 'package:learn_dart_together/24_03_20/transaction.dart';

class Query {
  final _transactions = [
    Transaction(Trader("Brian", "Cambridge"), 2011, 300),
    Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
    Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
    Transaction(Trader("Mario", "Milan"), 2012, 710),
    Transaction(Trader("Mario", "Milan"), 2012, 700),
    Transaction(Trader("Alan", "Cambridge"), 2012, 950),
  ];

  List<Transaction> copyList() {
    return [..._transactions];
  }

  List<Transaction> firstTask() {
    return copyList().where((transaction) => transaction.year == 2011).toList();
  }

  List<String> secondTask() {
    return copyList()
        .map((transaction) => transaction.trader.city)
        .toSet()
        .toList();
  }

  List<Trader> thirdTask() {
    return copyList()
        .where((transaction) => transaction.trader.city == "Cambridge")
        .map((transaction) => transaction.trader)
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));
  }

  List<String> fourthTask() {
    return copyList()
        .map((transaction) => transaction.trader.name)
        .toSet()
        .toList()
      ..sort((a, b) => a.compareTo(b));
  }

  bool fifthTask() {
    return copyList().any((transaction) => transaction.trader.city == "Milan");
  }

  List<int> sixthTask() {
    return copyList()
        .where((transaction) => transaction.trader.city == "Cambridge")
        .map((transaction) => transaction.value)
        .toList();
  }

  int seventhTask() {
    return copyList()
        .map((transaction) => transaction.value)
        .reduce((value, element) => value > element ? value : element);
  }
}
