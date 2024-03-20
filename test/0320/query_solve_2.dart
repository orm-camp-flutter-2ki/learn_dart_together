import 'package:collection/collection.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오.
  // 예상 값 : Cambridge, Milan

  test('query_solve_2 test', () {
    transactions
        .map((e) => e.trader.city)
        // map : trader의 city 요소로 이루어진 새로운 Iterable을 생성
        .toSet()
        // set : set으로 변환, 중복데이터를 제거
        .forEach((print));
  });
}
