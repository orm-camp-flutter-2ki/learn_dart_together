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
  question1(transactions);
  question2(transactions);
  question3(transactions);
  question4(transactions);
  question5(transactions);
  question6(transactions);
  question7(transactions);
  question8(transactions);
}

void question1(List<Transaction> transactions) {
  print('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오');
  transactions.where((transaction) => transaction.year == 2011).toList().sorted((a, b) => a.value.compareTo(b.value)).map((transaction) => transaction.trader.name).forEach(print);
}

void question2(List<Transaction> transactions) {
  print('2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오');
  transactions.map((transaction) => transaction.trader.city).toSet().forEach(print);
}

void question3(List<Transaction> transactions) {
  print('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오');
  transactions
      .where((transaction) => transaction.trader.city == 'Cambridge')
      .map((transaction) => transaction.trader.name)
      .toSet()
      .sorted((a, b) => a.toString().compareTo(b.toString()))
      .forEach(print);
}

void question4(List<Transaction> transactions) {
  print('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오');
  transactions.map((transaction) => transaction.trader.name).toSet().sorted((a, b) => a.compareTo(b)).forEach(print);
}

void question5(List<Transaction> transactions) {
  print('5. 밀라노에 거래자가 있는가?');
  transactions.where((transaction) => transaction.trader.city == 'Milan').map((transaction) => transaction.trader.name).toSet().forEach(print);
}

void question6(List<Transaction> transactions) {
  print('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오');
  transactions.where((transaction) => transaction.trader.city == 'Cambridge').map((transaction) => transaction.value).sorted((a, b) => a.compareTo(b)).forEach(print);
}

void question7(List<Transaction> transactions) {
  print('7. 전체 트랜잭션 중 최대값은 얼마인가?');
  final question7 = transactions.map((transaction) => transaction.value).sorted((a, b) => a.compareTo(b));
  print('${question7.last}');
}

void question8(List<Transaction> transactions) {
  print('8. 전체 트랜잭션 중 최소값은 얼마인가?');
  final question8 = transactions.map((transaction) => transaction.value).sorted((a, b) => a.compareTo(b));
  print(question8);
}
/**
 * 출력결과
1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
Brian
Raoul
2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
Cambridge
Milan
3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
Alan
Brian
Raoul
4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
Alan
Brian
Mario
Raoul
5. 밀라노에 거래자가 있는가?
Mario
6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오

 */