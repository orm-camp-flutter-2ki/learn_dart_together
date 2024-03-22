import 'package:collection/collection.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오.
  final expectedResult = ['Alan', 'Brian', 'Mario', 'Mario', 'Raoul', 'Raoul'];
  final eq = DeepCollectionEquality().equals;

  test('query_solve_4 test', () {
    final actualResult = transactions
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((e) => e.trader.name);

    expect(eq(actualResult, expectedResult), true);
  });
}
