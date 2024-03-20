import 'package:collection/collection.dart';
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

void main() {
  final transactions = [
    Transaction(Trader("Brian", "Cambridge"), 2011, 300),
    Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
    Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
    Transaction(Trader("Mario", "Milan"), 2012, 710),
    Transaction(Trader("Mario", "Milan"), 2012, 700),
    Transaction(Trader("Alan", "Cambridge"), 2012, 950),
  ];
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  final names = transactions
      .where((e) => e.year == 2011)
      .sorted((a, b) => a.value.compareTo(b.value))
      .map((t) => t.trader.name)
      .toList();

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  Set<String> cities = {};
  transactions.forEach((element) => cities.add(element.trader.city));

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  final cambridgeNames = transactions
      .where((element) => element.trader.city == 'Cambridge')
      .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
      .map((e) => e.trader.name);

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  final Set<String> allNames = {};
  transactions
      .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
      .forEach((element) => allNames.add(element.trader.name));

  // 5. 밀라노에 거래자가 있는가?
  final isMilan = transactions.any((element) => element.trader.city == 'Milan');

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  final values = transactions
      .where((element) => element.trader.city == 'Cambridge')
      .map((e) => e.value)
      .toList();

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?

  // 바로 Reduce 를 진행하지않고 MAp 으로 value 를 꺼낸 다음에 reduce 돌리니까 해결됨
  // 왜 바로 transactions에 reduce를 돌리면 안될까?
  final maxResult;
  maxResult = transactions.map((e) => e.value).reduce((e, v) => max(e, v));

// 8. 전체 트랜잭션 중 최소값은 얼마인가?
  final minResult =
      transactions.map((e) => e.value).reduce((e, v) => min(e, v));
}
