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
  transactions.where((element) => element.year == 2011).map((e) => e.trader.name).sorted((a, b) => a.compareTo(b)).forEach(print);
  // sorted()는 원본을 건드리지 않고 결과를 리턴 해준다.

  // 디버깅할 때는 이런식으로 쪼개서 해보는 것도 나쁘지 않음.
  // var stage1 = transactions.where((element) => e.year ==2011);
  // var stage2 = stage1.toList();
  // var stage3 = stage2.sorted((a, b) => a.value.compareTo(b.value));

}
