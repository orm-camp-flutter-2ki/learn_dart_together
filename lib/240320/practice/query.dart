import 'dart:math';

import 'package:collection/collection.dart';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Trader &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              city == other.city;

  @override
  int get hashCode => name.hashCode ^ city.hashCode;

  @override
  String toString() {
    return 'Trader{name: $name, city: $city}';
  }
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Transaction &&
              runtimeType == other.runtimeType &&
              trader == other.trader &&
              year == other.year &&
              value == other.value;

  @override
  int get hashCode => trader.hashCode ^ year.hashCode ^ value.hashCode;

  @override
  String toString() {
    return 'Transaction{trader: $trader, year: $year, value: $value}';
  }
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
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  // question1(transactions);
  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  // question2(transactions);
  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  // question3(transactions);
  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  // question4(transactions);
  // 5. 밀라노에 거래자가 있는가?
  // question5(transactions);
  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  // question6(transactions);
  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  question7(transactions);
  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  question8(transactions);
}

void question1(List<Transaction> transaction) {
  final q1 = transactions
      .where((e) => e.year == 2011)
      .sorted((a, b) => a.value.compareTo(b.value))
      .map((e) => e.trader.name)
      .forEach(print);
}

void question2(List<Transaction> transaction) {
  final q2 = transactions
      .map((e) => e.trader.city)
      .toSet()
      .forEach(print);
}

void question3(List<Transaction> transaction) {
  final q3 = transactions
      .where((e) => e.trader.city == 'Cambridge')
      .map((e) => e.trader.name)
      .toSet()
      .sorted((a, b) => a.compareTo(b))
      .forEach(print);
}

void question4(List<Transaction> transaction) {
  final q4 = transactions
      .map((e) => e.trader.name)
      .toSet()
      .sorted((a, b) => a.compareTo(b))
      .forEach(print);
}

void question5(List<Transaction> transaction) {
  final q5 = transactions
      .any((e) => e.trader.city == "Milan");

  print(q5);
}

void question6(List<Transaction> transaction) {
  final q6 = transactions
      .where((e) => e.trader.city == 'Cambridge')
      .map((e) => e.value)
      .toSet();
}

void question7(List<Transaction> transaction) {
  final q7 = transactions
      .map((e) => e.value)
      .reduce(max);

  print(q7);
}

void question8(List<Transaction> transaction) {
  final q8 = transactions
      .map((e) => e.value)
      .reduce(min);

  print(q8);
}