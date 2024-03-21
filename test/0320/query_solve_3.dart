import 'package:collection/collection.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오.
  final expectedResult = ['Alan', 'Brian', 'Raoul', 'Raoul'];
  final eq = DeepCollectionEquality().equals;

  test('query_solve_3 test', () {
    final actualResult = transactions
        .where((element) => element.trader.city == 'Cambridge')
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((e) => e.trader.name);

    expect(eq(actualResult, expectedResult), true);
  });

  // test('query_solve_3 test2', () {
  //   final actualResult = transactions
  //       .where((e) => e.trader.city == 'Cambridge')
  //       .map((e) => e.trader.name)
  //       .toSet()
  //       .sorted(Comparable.compare);
  //
  //   expect(eq(actualResult, expectedResult), true);
  // });
}

// where : city가 camvridge인 요소로 이루어진 Iterable을 생성
// name 오름차순 정렬
// map : trader의 name 요소를 이루어진 새로운 Iterable을 생성
