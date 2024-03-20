import 'dart:math';

import 'package:collection/collection.dart';
import '01_transaction.dart';

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오.
  // Brian Raoul
  transactions
      .where((transaction) => transaction.year == 2011)
      .toList()
      .sorted((a, b) => a.value.compareTo(b.value))
      .map((transaction) => transaction.trader.name)
      .forEach(print);

  // final stage1 = transactions.where((transaction) => transaction.year == 2011);
  //
  // final stage2 = stage1.toList();
  //
  // final stage3 = stage2.sorted((a, b) => a.value.compareTo(b.value));
  //
  // final state4 = stage3.map((transaction) => transaction.trader.name);
  //
  // state4.forEach(print);

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오.
  // Cambridge Milan
  (transactions.map((e) => e.trader.city).toSet()).forEach(print);

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오.
  // Alan Brian Raoul Raoul
  transactions
      .where((e) => e.trader.city == 'Cambridge')
      // .toList()
      .sorted((a, b) => a.trader.name.compareTo(b.trader.name))   // sorted 안에 toList를 포함
      .map((e) => e.trader.name)
      .forEach(print);

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오.
  // Alan Brian Mario Mario Raoul Raoul
    transactions
      .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
      .map((e) => e.trader.name)
      .forEach(print);

  // 5. 밀라노에 거래자가 있는가?
  bool isMilan = transactions.any((e) => e.trader.city == 'Milan');
  if (isMilan) {
    print('밀라노에 있다.');
  } else {
    print('밀라노에 없다.');
  }

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오.
  transactions
      .where((e) => e.trader.city == 'Cambridge')
      .map((e) => {e.value})
      .forEach(print);

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  // 1000
  print(transactions.map((e) => e.value).reduce(max));

  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  // 300
  print(transactions.map((e) => e.value).reduce(min));
}
