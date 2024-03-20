// 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
// 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
// 5. 밀라노에 거래자가 있는가?
// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
// 7. 전체 트랜잭션 중 최대값은 얼마인가?
// 8. 전체 트랜잭션 중 최소값은 얼마인가?

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

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  //연습 문제 1번 Raoul Brian
  transactions
      .where((transaction) => transaction.year == 2011)
      .toList()
      .sorted((a, b) => b.value.compareTo(a.value))
      .map((transaction) => transaction.trader.name)
      .forEach(print);

  //연습 문제 2번 {Cambridge, Milan}
  transactions.map((transaction) => transaction.trader.city).toList().toSet();

  //연습 문제 3번 [Alan, Brian, Raoul, Raoul]
  transactions
      .where((transaction) => transaction.trader.city == "Cambridge")
      .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
      .map((transaction) => transaction.trader.name)
      .toList();

  //연습 문제 4번 [Alan, Brian, Mario, Mario, Raoul, Raoul]
  transactions
      .sorted((a, b) => b.trader.name.compareTo(a.trader.name))
      .map((transaction) => transaction.trader.name)
      .toList();

  //연습 문제 5번 true
  transactions.any((transaction) => transaction.trader.city == "Milan");

  //연습 문제 6번 300 1000 400 950
  transactions
      .where((transaction) => transaction.trader.city == "Cambridge")
      .map((transaction) => transaction.value)
      .forEach(print);

  //연습 문제 7번 1000
  transactions.map((transaction) => transaction.value).toList().max;

  //연습 문제 8번 300
  transactions.map((transaction) => transaction.value).toList().min;
}
