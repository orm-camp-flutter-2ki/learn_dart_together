import 'dart:math';

import 'package:collection/collection.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 8. 전체 트랜잭션 중 최소값은 얼마인가?
  // 예상 값 : 300

  test('query_solve_8 test', () {
    expect(transactions.map((e) => e.value).reduce(min), 300);
  });
}
