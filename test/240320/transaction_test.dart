import 'dart:math';

import 'package:learn_dart_together/240320/transaction.dart';
import 'package:test/test.dart';
import 'package:collection/collection.dart';

void main() {
  test('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정렬하여 이름을 나열한다.', () {
    Iterable<String> result = transactions
        .where((element) => element.year == 2011) //2011년 찾기
        .sorted((a, b) => a.value.compareTo(b.value)) //오름차순 정렬(일회성)
        .map((element) => element.trader.name); //이름으로 변형

    expect(result.length, 2);
    expect(result.toString(), '(Brian, Raoul)'); //순서 영향 있음
  });

  test('2. 거래자가 근무하는 모든 도시를 중복 없이 나열한다.', () {
    Set<String> result =
        transactions.map((element) => element.trader.city).toSet();

    expect(result.length, 2);
    expect(result.toString(), '{Cambridge, Milan}');
  });

  test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열한다.', () {
    List<String> result = transactions
        .where((element) => element.trader.city == 'Cambridge')
        .map((element) => element.trader.name) //이름으로 변형하고
        .sorted((a, b) => a.compareTo(b)); //알파벳순 정렬

    expect(result.length, 4); //4명맞는지
  });

  test('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열한다.', () {
    List<String> result = transactions //리스트 result 만들기
        .map((element) => element.trader.name) //거래자 이름으로 변형
        .sorted((a, b) => a.compareTo(b)); //알파벳순 정렬

    expect(result.first, 'Alan');
    expect(result[1], 'Brian'); //두번째
    expect(result.last, 'Raoul');
  });

  test('5. 밀라노에 거래자가 있는가?', () {
    expect(transactions.any((element) => element.trader.city == 'Milan'), true);
    expect(
        transactions.any((element) => element.trader.city == 'Korea'), false);
  }); //any 하나라도 있으면 아 어렵다 ..

  test('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션 값을 출력한다.', () {
    Iterable<int> result = transactions
        .where((element) => element.trader.city == 'Cambridge')
        .map((element) => element.value);

    expect(result.length, 4);
  });

  test('7. 전체 트랜잭션 중 최댓값은 얼마인가?', () {
    int result = transactions
        .map((element) => element.value)
        .reduce((value, element) => max(value, element)); //최대값추리기
    expect(result, 1000);
  });

  test('8. 전체 트랜잭션 중 최솟값은 얼마인가?', () {
    int result = transactions.map((element) => element.value).reduce(min);
    expect(result, 300);
  });
}
