import 'dart:math';

import 'package:collection/collection.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  //  7. 전체 트랜잭션 중 최대값은 얼마인가?
  // 예상 값 : 1000

  test('query_solve_4 test', () {
    final maxValue = transactions
        .map((e) => e.value)
        .reduce((value, element) => max(value, element));

    expect(maxValue, 1000);
  });
}
