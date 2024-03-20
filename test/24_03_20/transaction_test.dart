import 'package:test/test.dart';
import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_20/transaction.dart';


void main() {

  // '1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오'
  test('test1', () {
    List<String> sortedList1 = transaction.where((transaction) => transaction.year == 2011)
        .toList()
        .sorted((a,b) => a.value.compareTo(b.value))
        .map((e) => e.trader.name)
        .toList();

    List<String> expectedList1 = ['Brian', 'Raoul'];

    expect(sortedList1, equals(expectedList1));
  });
}