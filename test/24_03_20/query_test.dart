import 'dart:math';
import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_20/query.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오', () {
    transactions
        .where((e) => e.year == 2011)
        .sorted((a, b) => a.value.compareTo(b.value))
        .forEach((e) {
      print(e.trader.name);
    });
  });

  test('거래자가 근무하는 모든 도시를 중복 없이 나열하시오', () {
    transactions.map((e) => e.trader.city).toSet().forEach(print);
  });

  test('케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오', () {
    transactions
        .where((e) => e.trader.city == 'Cambridge')
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .forEach((e) {
      print(e.trader.name);
    });
  });

  test('모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오', () {
    transactions
        .map((e) => e.trader.name)
        .sorted((a, b) => a.compareTo(b))
        .forEach((e) {
      print(e);
    });
  });

  test('밀라노에 거래자가 있는가?', () {
    print(transactions.any((e) => e.trader.city == 'Milan')); //5번 문제

    transactions
        .where((e) => e.trader.city == 'Cambridge')
        .sorted((a, b) => a.value.compareTo(b.value))
        .forEach((e) {
      print(e.value);
    });
  });

  test('전체 트랜잭션 중 최대값은 얼마인가?', () {
    print(transactions.map((e) => e.value).reduce((e, v) => max(e, v))); //7번 문제
  });
  test('전체 트랜잭션 중 최소값은 얼마인가?', () {
    print(transactions.map((e) => e.value).reduce((e, v) => min(e, v))); //8번 문제
  });
}
