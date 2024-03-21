import 'dart:ffi';
import 'dart:math';

import 'package:test/test.dart';
import 'package:collection/collection.dart';
import 'package:learn_dart_together/240320/query.dart';

// 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
//      Brian,Raoul
// 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
//      Cambridge,Milan
// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
//      Alan,Brian,Raoul
// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
//      Alan,Brian,Mario,Raoul
// 5. 밀라노에 거래자가 있는가? -> 밀라노의 거래자 전체 말하는듯?
//      yes or no 로 작업
// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
//     "Brian", "Cambridge"), 2011, 300),
//     "Raoul", "Cambridge"), 2012, 1000),
//     "Raoul", "Cambridge"), 2011, 400),
//      "Alan", "Cambridge"), 2012, 950),
// 7. 전체 트랜잭션 중 최대값은 얼마인가? vlaue에 대한 최댓값?
//      Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
// 8. 전체 트랜잭션 중 최소값은 얼마인가?
//      Transaction(Trader("Brian", "Cambridge"), 2011, 300),

void main() {
  test('1 번 Test', () {
    transactions
        // 2011년도랑 같은 것 필터링
        .where((e) => e.year == 2011)
        // 거래량 확인 후 리스트 담음 , sorted 사용해서 사용안해도 됨!
        .toList()
        // sorted 사용해서 가격기준 오름차순으로 정리
        .sorted((a, b) => a.value.compareTo(b.value))
        // key , value 쌍의로 저장
        // 각 거래의 거래자 이름 출력
        .map((e) => e.trader.name)
        .forEach(print);
  });
  test('2번 Test', () {
    transactions.map((e) => e.trader.city).toSet().forEach(print);
  });
  test('3번 Test', () {
    transactions
        .where((e) => e.trader.city == 'Cambridge')
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((e) => e.trader.name)
        .forEach(print);
  });
  test('4번 test', () {
    transactions
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        // 이코드 없으면 , Instance of 'Transaction'
        .map((e) => e.trader.name)
        .forEach(print);
  });
  test('5번 test', () {
    final milan = transactions.any((e) => e.trader.city == 'Milan');
    if (milan) {
      print('밀라노 거래자 있음');
    } else {
      print('밀라노 거래자 없음');
    }
  });
  test('6번 test', () {
    transactions
        .where((e) => e.trader.city == 'Cambridge')
        .map((e) => e.value)
        .forEach(print);
  });
  test('7번 test', () {
    final maxValue =
        transactions.map((e) => e.value).reduce((e, v) => e > v ? e : v);
    // transactions.map((e) => e.value).reduce(max);
    print(maxValue);
    expect(maxValue, equals(1000));
  });
  test('8번 test', () {
    final minValue =
        transactions.map((e) => e.value).reduce((e, v) => e < v ? e : v);
    // transactions.map((e) => e.value).reduce(min);
    print(minValue);
    expect(minValue, equals(300));
  });
}
