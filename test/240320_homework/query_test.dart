import 'package:collection/collection.dart';
import 'package:learn_dart_together/240320_homework/query.dart';
import 'package:test/test.dart';

void main() {
  test('문제1 테스트', () {
    List<String> testCode = transactions
        .where((transaction) => transaction.year == 2011)
        .toList()
        .sorted((a, b) => b.value.compareTo(a.value))
        .map((transaction) => transaction.trader.name)
        .toList();

    expect(testCode[0] == 'Raoul', true);
    expect(testCode[1] == 'Brian', true);
  });

  test('문제2 테스트', () {
    Set<String> testCode =
        transactions.map((transaction) => transaction.trader.city).toSet();

    expect(testCode.first == 'Cambridge', true);
    expect(testCode.last == 'Milan', true);
  });

  test('문제3 테스트', () {
    List<String> testCode = transactions
        .where((transaction) => transaction.trader.city == "Cambridge")
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((transaction) => transaction.trader.name)
        .toList();

    expect(testCode[0] == 'Alan', true);
    expect(testCode[1] == 'Brian', true);
    expect(testCode[2] == 'Raoul', true);
    expect(testCode[3] == 'Raoul', true);
  });

  test('문제4 테스트', () {
    List<String> testCode = transactions
        .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
        .map((transaction) => transaction.trader.name)
        .toList();
    print(testCode);
    expect(testCode[0] == 'Alan', true);
    expect(testCode[1] == 'Brian', true);
    expect(testCode[2] == 'Mario', true);
    expect(testCode[3] == 'Mario', true);
    expect(testCode[4] == 'Raoul', true);
    expect(testCode[5] == 'Raoul', true);
  });

  test('문제5 테스트', () {
    bool testCode =
        transactions.any((transaction) => transaction.trader.city == "Milan");

    expect(testCode, true);
  });

  test('문제6 테스트', () {
    List<int> testCode = transactions
        .where((transaction) => transaction.trader.city == "Cambridge")
        .map((transaction) => transaction.value)
        .toList();

    expect(testCode[0] == 300, true);
    expect(testCode[1] == 1000, true);
    expect(testCode[2] == 400, true);
    expect(testCode[3] == 950, true);
  });

  test('문제7 테스트', () {
    int testCode =
        transactions.map((transaction) => transaction.value).toList().max;

    expect(testCode == 1000, true);
  });

  test('문제8 테스트', () {
    int testCode =
        transactions.map((transaction) => transaction.value).toList().min;

    expect(testCode == 300, true);
  });
}
