import 'dart:math';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240320/query.dart';
import 'package:test/test.dart';

void main() {
  final List<Transaction> transactions = [
    Transaction(Trader("Brian", "Cambridge"), 2011, 300),
    Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
    Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
    Transaction(Trader("Mario", "Milan"), 2012, 710),
    Transaction(Trader("Mario", "Milan"), 2012, 700),
    Transaction(Trader("Alan", "Cambridge"), 2012, 950),
  ];

  Function eq = DeepCollectionEquality().equals; // 안에 리스트가 있어도 찾음
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격기준 오름차순으로 정리하여 이름을 나열하시오.
// 가격기준,
// 오름차순
// 이름만 나열

  test('1', () {
    final expectedResult = ['Brian', 'Raoul'];
    final actualResult = transactions
        .where(
            (e) => e.year == 2011) //where 이터러블, 리스트로 바꿔야 함
        .toList()
        .sorted((a, b) => a.value.compareTo(b.value)) //오름차순 정렬
        .map((e) => e.trader.name)
        .toList(); //트렌젝션 트레이더의 이름으로 다 바꾸겠음, 스트링만 남는다
    // .forEach(print); // main에서 돌려볼려고 할 때, 여기선 필요없음

    expect(eq(actualResult, expectedResult), true);
  });

// 2.거래자(trader)가 근무하는 모든 도시(city)를 중복없이 나열하시오
  test('2', () {
    final expectedResult = {'Cambridge', 'Milan'};

    final actualResult = transactions
        .map((e) => e.trader.city) // 모든 트랜잭션의 도시 목록을 가져온다.
        .toSet(); // 중복된 도시를 제거하기 위해 Set으로 변환한다.

    expect(eq(actualResult, expectedResult), true);
// // 도시 이름을 오름차순으로 정렬하여 출력한다.
//   cities.toList()..sort()..forEach(print);
  });
// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  test('3', () {
    final expectedResult = ['Alan', 'Brian', 'Raoul'];

    final actualResult = transactions
        .where((e) => e.trader.city == 'Cambridge')
        .map((e) => e.trader.name)
        .toSet() //순서 없는 애
        .sorted(Comparable.compare); //섹시코드

    expect(eq(actualResult, expectedResult), true);
  });
// 4. 모든 거래자(trader)의 이름을 알파벳순으로 정렬하여 나열하시오
  test('4', () {
    final expectedResult = ['Alan', 'Brian', 'Mario', 'Raoul'];

    final actualResult = transactions
        .map((e) => e.trader.name)
        .toSet()
        .sorted((a, b) => a.compareTo(b)); //3번 sorted 줄과 같은 것

    expect(eq(actualResult, expectedResult), true);
  });

// 5. 밀라노에 거래자가 있는가?
  test('5', () {
    final expectedResult = true;

    final actualResult = transactions
        .any((e) => e.trader.city == 'Milan');

    expect(eq(actualResult, expectedResult), true);
  });
// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션(value)값을 출력하시오
// 케임브리지 거주 거래자의 모든 트랜잭션 값을 추출하여 List에 저장합니다.
  test('6', () {
  final expectedResult = {300,1000,400,950}; //주어진 조건 없어서, 순서 없어도 set로 {}

  final actualResult = transactions
      .where((e) => e.trader.city == 'Cambridge')
      .map((e) => e.value)
      .toSet();

  expect(eq(actualResult, expectedResult), true);
  });

// 7. 전체 트랜잭션(value) 중 최대값은 얼마인가?
//   모든 트랜잭션의 value 값을 추출하여 List에 저장합니다.
  test('7', () {
    final expectedResult = 1000;
    final actualResult = transactions
        .map((e) => e.value)
        // .reduce((a, b) => a > b ? a : b);
        .reduce(max);

    expect(eq(actualResult, expectedResult), true);
  });

// 8. 전체 트랜잭션(value) 중 최소값은 얼마인가?
//   모든 트랜잭션의 value 값을 추출하여 List에 저장합니다.
  test('8', () {
    final expectedResult = 300;
    final actualResult = transactions.map((e) => e.value).min; //섹시코드
        // .map((e) => e.value)
        // .reduce(min);

    expect(eq(actualResult, expectedResult), true);

  });
}
