import 'package:collection/collection.dart';

import 'package:learn_dart_together/0320/query.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  // 5. 밀라노에 거래자가 있는가?
  final expectedResult = true;

  test('query_solve_5 밀라노 거래자가 있는지 test', () {
    final actualResult = transactions.any((element) => element.trader.city == 'Milan');

    expect(actualResult, expectedResult);
  });
}
