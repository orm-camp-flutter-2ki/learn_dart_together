import 'package:collection/collection.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오.
  // 예상 값 : brian, raoul

  test('query_solve_1 test', () {
    transactions
        .where((element) => element.year == 2011)
        // where : 주어진 조건을 충족하는 모든 요소를 포함하는 Iterable을 생성
        .toList()
        .sorted((a, b) => a.value.compareTo(b.value))
        // sort : 주어진 비교 함수에 따라 이 목록을 정렬, 비교 함수는 Comparator 역할을 해야 한다. 사용하면 실제 내용의 순서가 바뀐다.
        // sorted : 요소로 정렬된 목록을 생성, 요소는 compare Comparator에 의해 정렬(일회성)된다.
        .map((e) => e.trader.name)
        .forEach((print));
  });
}
