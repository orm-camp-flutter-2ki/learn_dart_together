import 'package:collection/collection.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오.
  // 예상 값 : Alan, Brian, Raoul, Raoul

  test('query_solve_3 test', () {
    transactions
        .where((element) => element.trader.city == 'Cambridge')
        // where : city가 camvridge인 요소로 이루어진 Iterable을 생성
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        // name 오름차순 정렬
        .map((e) => e.trader.name)
        // map : trader의 name 요소를 이루어진 새로운 Iterable을 생성
        .forEach((print));
  });
}
