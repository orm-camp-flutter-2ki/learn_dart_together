import 'dart:math';

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
  /// 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  print('1번 문제 결과 -1');

  for (var e in (transactions.where((e) => e.year == 2011).toList()
    ..sort((a, b) => a.value.compareTo(b.value)))) {
    print(e.trader.name);
  }
  print('\n1번 문제 결과 -2');
  transactions
      .where((element) => element.year == 2011)
      .map((e) => e.trader.name)
      .sorted((a, b) => a.compareTo(b))
      .forEach(print);
  // 원본을 건드리지 않고 결과를 리턴 해준다.

  // 디버깅할 때는 이런식으로 쪼개서 해보는 것도 나쁘지 않음.
  // var stage1 = transactions.where((element) => e.year ==2011);
  // var stage2 = stage1.toList();
  // var stage3 = stage2.sorted((a, b) => a.value.compareTo(b.value));

  /// 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오 => set
  print('\n2번 문제 결과');
  transactions.map((e) => e.trader.city).toSet().forEach(print);

  /// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  print('\n3번 문제 결과');
  transactions
      .where((e) => e.trader.city == 'Cambridge')
      .map((e) => e.trader.name)
      .toSet()
      .forEach(print);

  /// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  print('\n4번 문제 결과');
  transactions
      .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
      .forEach((e) => print(e.trader.name));

  /// 5. 밀라노에 거래자가 있는가?
  print('\n5번 문제 결과');
  print(transactions.any((element) => element.trader.city == 'Milan'));


  /// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  print('\n6번 문제 결과');
  transactions
      .where((element) => element.trader.city == 'Cambridge')
      .forEach((element) {
    print(element.value);
  });

  /// 7. 전체 트랜잭션 중 최대값은 얼마인가?
  print('\n7번 문제 결과');
  print(transactions.map((e) => e.value).reduce((v, e) => max(v, e)));


}
