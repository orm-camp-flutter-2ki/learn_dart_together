import 'dart:io';

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
  Transaction(Trader("Brain", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {

print('1. 2011년에 일어난 모든 트랜잭션을 가격 오름차순으로 정리하여 나열하시오');
  transactions
  .where((e) => e.year == 2011)
  .map((transaction) =>transaction.value).forEach(print);


print(' 2. 거래자가 근무하는 모든 도시를 중복없이 나열하시오');
 final a = transactions
  .map((transaction) => transaction.trader.city)
  .toList()
  .toSet()
  .forEach(print);


  print(' 3. 케임브릿지 거래자 이름순 X');
  transactions
      .where((transaction) => transaction.trader.city == "Cambridge")
      .toList()
      .map((transaction) => transaction.trader.name)
      .toSet()
      .forEach(print);


  print('4번 문제 모든 거래자 이름 알파벳 순 X ');
  transactions
      .map((transaction) => transaction.trader.name)
      .toList()
      .toSet()
      .forEach(print);


print('5번 문제 밀라노 거래자');
  transactions
  .where((transaction) => transaction.trader.city == "Milan")
  .map((transaction) => transaction.trader.name).toSet().forEach(print);


  print('6번 케임브리지 거래자 모든 트래잭션값');
  transactions
  .where((transaction) => transaction.trader.city == "Cambridge")
  .map((transaction) => transaction.value).forEach(print);


  print('7번 트랜잭션 중 최대값은 얼마인가X');
  transactions
  .map((transaction) =>transaction.value)
  .reduce((a, b) => a > b ? a : b);


  print('8번 트랜잭션 중 최소값은 얼마인가 X');
  transactions
  .map((transaction) => transaction.value)
  .toList()
  .reduce((value, element) => value + element);

}
