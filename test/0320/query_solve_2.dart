import 'package:collection/collection.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오.
  final expectedResult = {'Cambridge', 'Milan'};
  final eq = DeepCollectionEquality().equals;

  test('query_solve_2 test', () {
    final actualResult = transactions.map((e) => e.trader.city).toSet();

    expect(eq(actualResult, expectedResult), true);
  });
}

// map : trader의 city 요소로 이루어진 새로운 Iterable을 생성
// set : set으로 변환, 중복데이터를 제거
