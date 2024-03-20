import '''
package:collection/collection.dart''';

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
  Transaction(Trader('Brian', 'Cambridge'), 2011, 300),
  Transaction(Trader('Raoul', 'Cambridge'), 2012, 1000),
  Transaction(Trader('Raoul', 'Cambridge'), 2011, 400),
  Transaction(Trader('Mario', 'Milan'), 2012, 710),
  Transaction(Trader('Mario', 'Milan'), 2012, 700),
  Transaction(Trader('Alan', 'Cambridge'), 2012, 950),
];

void main() {
  //brian, raoul 문제 1번

  transactions
      .where((transactions) => transactions.year == 2011)
      .toList()
      .sorted((a, b) => a.value.compareTo(b.value))
      .map((transaction) => transaction.trader.name)
      .forEach(print);

  // 중복 없이 도시들 나열 set 문제 2번

  final citys = transactions
      .map((transaction) => transaction.trader.city)
      .toSet()
      .toList();
  print('$citys');

  // 케임브릿지 근무 거래자 이름순 정렬 문제 3번 답은 Alan, Brian, Raoul

  transactions
      .where((transactions) => transactions.trader.city == 'Cambridge')
      .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
      .map((transaction) => transaction.trader.name)
      .toSet()
      .forEach(print);

  // 모든 거래자의 이름을 알파벳순으로 정렬 문제 4번
  transactions
      .map((transactions) => transactions.trader.name)
      .sorted((a, b) => a.compareTo(b))
      .toSet()
      .toList()
      .forEach(print);

  // 밀라노에 거래자가 있는가? 문제 5번
  final person =
      transactions.any((transactions) => transactions.trader.city == 'Milan');
  print(person);

  // 케임브리지에 거주하는 거래자의 모든 트랙잭션 값 문제 6번
  final sumValue = transactions
      .where((transactions) => transactions.trader.city == 'Cambridge')
      .map((transactions) => transactions.value)
      .toList();

  print('$sumValue');


  // 전체 트랜잭션 중 최대값은 얼마인가? 문제 7번
  final maxValue = transactions.map((transactions) => transactions.value).max;
  print(maxValue);

  // 전체 트랜잭션 중 최소값은 얼마인가? 문제 8번
  final minValue = transactions.map((transactions) => transactions.value).min;
  print(minValue);
}
