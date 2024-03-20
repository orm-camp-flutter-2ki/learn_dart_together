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

  // 기존 트랜잭션 리스트 복사
  List<Transaction> copyList() {
    return [..._transactions];
  }

  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열
  List<Transaction> firstTask() {
    return copyList().where((transaction) => transaction.year == 2011).toList();
  }

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열
  List<String> secondTask() {
    return copyList()
        .map((transaction) => transaction.trader.city)
        .toSet()
        .toList();
  }

// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬
  List<Trader> thirdTask() {
    return copyList()
        .where((transaction) => transaction.trader.city == "Cambridge")
        .map((transaction) => transaction.trader)
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));
  }

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬해서 반환
  List<String> fourthTask() {
    return copyList()
        .map((transaction) => transaction.trader.name)
        .toSet()
        .toList()
      ..sort((a, b) => a.compareTo(b));
  }

  // 5. 밀라노에 거래자가 있는지 여부
  bool fifthTask() {
    return copyList().any((transaction) => transaction.trader.city == "Milan");
  }

  // 6. 케임브리지에 거주하는 거래자의 모든 트랜잭션값을 나열
  List<int> sixthTask() {
    return copyList()
        .where((transaction) => transaction.trader.city == "Cambridge")
        .map((transaction) => transaction.value)
        .toList();
  }

  // 7. 전체 트랜잭션 중 최댓값
  int seventhTask() {
    return copyList()
        .map((transaction) => transaction.value)
        .reduce((value, element) => value > element ? value : element);
  }

  // 8. 전체 트랜잭션 중 최솟값
  int eighthTask() {
    return copyList()
        .map((transaction) => transaction.value)
        .reduce((value, element) => value < element ? value : element);
  }
}
