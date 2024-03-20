import 'dart:math';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240320/trader.dart';
import 'package:test/test.dart';

void main() {
  final transactions = [
    Transaction(Trader('Brian', 'Cambridge'), 2011, 300),
    Transaction(Trader('Raoul', 'Cambridge'), 2012, 1000),
    Transaction(Trader('Raoul', 'Cambridge'), 2011, 400),
    Transaction(Trader('Mario', 'Milan'), 2012, 710),
    Transaction(Trader('Mario', 'Milan'), 2012, 700),
    Transaction(Trader('Alan', 'Cambridge'), 2012, 950),
  ];

  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  test('First Test', () {
    print('=======First Test=======');
    final first = transactions
        .where((element) => element.year == 2011)
        .toList()
        .sorted((a, b) => a.value.compareTo(b.value))
        .map((element) => element.trader.name)
        .toList();
    first.forEach(print);

    expect(first[0] == 'Brian', true);
    expect(first[1] == 'Raoul', true);
  });

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  test('Second Test', () {
    print('=======Second Test=======');
    final second = transactions
        .map((element) => element.trader.city)
        .toSet();
    second.forEach(print);

    expect(second.first == 'Cambridge', true);
    expect(second.last == 'Milan', true);
  });

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  test('Third Test', () {
    print('=======Third Test=======');
    final third = transactions
        .where((element) => element.trader.city == 'Cambridge')
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((element) => element.trader.name)
        .toList();
    third.forEach(print);

    expect(third[0] == 'Alan', true);
    expect(third[1] == 'Brian', true);
    expect(third[2] == 'Raoul', true);
    expect(third[3] == 'Raoul', true);
  });

  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  test('Fourth Test', () {
    print('=======Fourth Test=======');
    final fourth = transactions
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((element) => element.trader.name)
        .toList();
    fourth.forEach(print);

    expect(fourth[0] == 'Alan', true);
    expect(fourth[1] == 'Brian', true);
    expect(fourth[2] == 'Mario', true);
    expect(fourth[3] == 'Mario', true);
    expect(fourth[4] == 'Raoul', true);
    expect(fourth[5] == 'Raoul', true);
  });

  // 5. 밀라노에 거래자가 있는가?
  test('Fifth Test', () {
    print('=======Fifth Test=======');
    final fifth = transactions.where((element) => element.trader.city == 'Milan').isNotEmpty;
    if (fifth) {
      print('밀라노에 거래자가 있습니다');
    } else {
      print('밀라노에 거래자가 없습니다.');
    }

    expect(fifth, true);
  });

  // 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  test('Sixth Test', () {
    print('=======Sixth Test=======');
    final sixth = transactions
        .where((element) => element.trader.city == 'Cambridge')
        .toList();
    sixth.forEach(print); // toString() 활용
    
    expect(sixth[0].trader.name == 'Brian', true);
    expect(sixth[1].trader.name == 'Raoul', true);
    expect(sixth[2].trader.name == 'Raoul', true);
    expect(sixth[3].trader.name == 'Alan', true);
  });

  // 7. 전체 트랜잭션 중 최대값은 얼마인가?
  test('Seventh Test', () {
    print('=======Seventh Test=======');
    final seventh = transactions
        .map((element) => element.value)
        .reduce((e, v) => max(e, v));
    print(seventh);

    expect(seventh == 1000, true);
  });

  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  test('Eighth Test', () {
    print('=======Eighth Test=======');
    final eighth = transactions
        .map((element) => element.value)
        .reduce((e, v) => min(e, v));
    print(eighth);

    expect(eighth == 300, true);
  });
}