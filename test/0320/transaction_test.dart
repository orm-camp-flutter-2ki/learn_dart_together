import 'package:learn_dart_together/0320/transaction.dart';
import 'package:test/test.dart';

void main() {
  test('2. 거래자가 근무하는 모든 도시를 중복 없이 나열한다.', () {
    Set<String> set = {};

    transactions.forEach((element) { set.add(element.trader.city); });

    expect(set.toString(), '{Cambridge, Milan}');
  });
}