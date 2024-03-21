import 'dart:math';
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

// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
void main() {
  final cambridgeTraders = transactions
      .where((transaction) => transaction.trader.city == 'Cambridge') // 케임브리지에 거주하는 거래자 필터링
      .map((transaction) => transaction.trader.name) // 거래자의 이름 추출
      .toList(); // 리스트로 변환
  cambridgeTraders.sort(); // 이름순으로 정렬
  print(cambridgeTraders);
}

import 'dart:math';
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
//2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
void main() {
  transactions
      .where((transaction) => transaction.trader.city == 'Cambridge')
      .map((transaction) => transaction.trader.name)
      .toSet()
      .sorted((a, b) => a.toString().compareTo(b.toString()))
      .forEach(print);
}

import 'dart:math';
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

// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오void main() {
  transactions
      .where((transaction) => transaction.trader.city == 'Cambridge')
      .map((transaction) => transaction.trader.name)
      .toSet()
      .sorted((a, b) => a.toString().compareTo(b.toString()))
      .forEach(print);
}