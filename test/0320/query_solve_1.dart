import 'package:collection/collection.dart';
import 'package:collection/equality.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오.
  final expectedResult = ['Brian', 'Raoul'];
  final eq = DeepCollectionEquality().equals;
  // bool Function(List<dynamic>? list1, List<dynamic>? list2) eq = ListEquality().equals; // 얕은, function 뒤 타입은 test에선 생략해도 된다.
  // returndl dynamic이 된다... 타입을 명확하게 적어주는 것이 좋다. list, set에 다 가능

  test('query_solve_1 test', () {
    final actualResult = transactions
        .where((element) => element.year == 2011)
        .toList()
        .sorted((a, b) => a.value.compareTo(b.value))
        .map((e) => e.trader.name)
        .toList();

    expect(eq(actualResult, expectedResult), true);
  });
}

// where : 주어진 조건을 충족하는 모든 요소를 포함하는 Iterable을 생성
// sort : 주어진 비교 함수에 따라 이 목록을 정렬, 비교 함수는 Comparator 역할을 해야 한다. 사용하면 실제 내용의 순서가 바뀐다.
// sorted : 요소로 정렬된 목록을 생성, 요소는 compare Comparator에 의해 정렬(일회성)된다.
