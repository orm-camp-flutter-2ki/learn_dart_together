import 'package:collection/collection.dart';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

class Query {
  final transactions = [
    Transaction(Trader("Brian", "Cambridge"), 2011, 300),
    Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
    Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
    Transaction(Trader("Mario", "Milan"), 2012, 710),
    Transaction(Trader("Mario", "Milan"), 2012, 700),
    Transaction(Trader("Alan", "Cambridge"), 2012, 950),
  ];

  /// 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리 후 이름을 반환
  List<String> question1() {
    return transactions
        .where((element) => element.year == 2011)
        .map((e) => e.trader.name)
        .sorted((a, b) => a.compareTo(b))
        .toList();
  }

  /// 2. 거래자가 근무하는 모든 도시를 중복 없이 반환
  Set<String> question2() {
    return transactions.map((e) => e.trader.city).toSet();
  }

  /// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬 후 반환
  Set<String> question3() {
    return transactions
        .where((e) => e.trader.city == 'Cambridge')
        .map((e) => e.trader.name)
        .toSet();
  }

  /// 4. 모든 거래자의 이름을 알파벳순으로 정렬 후 반환
  List<String> question4() {
    return transactions
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((e) => e.trader.name)
        .toSet()
        .toList();
  }

  /// 5. 밀라노에 거래자가 있는지 여부
  bool question5() {
    return transactions.any((element) => element.trader.city == 'Milan');
  }

  /// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 반환
  List<int> question6() {
    return transactions
        .where((element) => element.trader.city == 'Cambridge')
        .map((e) => e.value)
        .toList();
  }

  /// 7. 전체 트랜잭션 중 최대값
  int question7() {
    return transactions.map((e) => e.value).max;
    // return transactions.map((e) => e.value).reduce(max);
  }

  /// 8. 전체 트랜잭션 중 최소값
  int question8() {
    return transactions.map((e) => e.value).min;
    // return transactions.map((e) => e.value).reduce(min);
  }
}
