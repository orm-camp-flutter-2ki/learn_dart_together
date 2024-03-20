import 'package:learn_dart_together/0320/transaction.dart';
import 'package:test/test.dart';
import 'package:collection/collection.dart';

void main() {
  test('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정렬하여 이름을 나열한다.', () {
    Iterable<String> result = transactions
        .where((element) => element.year == 2011)
        .sorted((a, b) => a.value.compareTo(b.value))
        .map((element) => element.trader.name);

    expect(result.length, 2);
    expect(result.toString(), '(Brian, Raoul)');
  });

  test('2. 거래자가 근무하는 모든 도시를 중복 없이 나열한다.', () {
    Set<String> result = transactions.map((element) => element.trader.city).toSet();

    expect(result.length, 2);
    expect(result.toString(), '{Cambridge, Milan}');
  });

  test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열한다.', () {
    List<String> result = transactions
        .where((element) => element.trader.city == 'Cambridge')
        .map((element) => element.trader.name)
        .sorted((a, b) => a.compareTo(b));

    expect(result.length, 4);
    expect(result.first, 'Alan');
    expect(result.last, 'Raoul');
  });

  test('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열한다.', () {
    List<String> result = transactions
        .map((element) => element.trader.name)
        .sorted((a, b) => a.compareTo(b));

    expect(result.first, 'Alan');
    expect(result[1], 'Brian');
    expect(result.last, 'Raoul');
  });

  test('5. 밀라노에 거래자가 있는가?', () {
    expect(transactions.any((element) => element.trader.city == 'Milan'), true);
    expect(transactions.any((element) => element.trader.city == 'Korea'), false);
  });

  test('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션 값을 출력한다.', () {
    transactions
        .where((element) => element.trader.city == 'Cambridge')
        .forEach((element) => print(element.value));
  });

  test('7. 전체 트랜잭션 중 최댓값은 얼마인가?', () {
    Transaction result = transactions.reduce((value, element) => value.value > element.value ? value: element);
    expect(result.value, 1000);
  });

  test('8. 전체 트랜잭션 중 최솟값은 얼마인가?', () {
    Transaction result = transactions.reduce((value, element) => value.value < element.value ? value: element);
    expect(result.value, 300);
  });
}