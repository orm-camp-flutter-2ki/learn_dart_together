import 'package:collection/collection.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_20/01_query.dart';
import 'package:test/test.dart';
import 'dart:math';

void main() {
  group("Query 문 테스트 작성", () {
    List<Transaction>? transactions;
    setUp(() {
      transactions = [
        Transaction(Trader("Brian", "Cambridge"), 2011, 300),
        Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
        Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
        Transaction(Trader("Mario", "Milan"), 2012, 710),
        Transaction(Trader("Mario", "Milan"), 2012, 700),
        Transaction(Trader("Alan", "Cambridge"), 2012, 950),
      ];
    });
    tearDown(() => transactions = null);
    test('2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오', () {
      //given, when then
      final names = transactions!
          .where((e) => e.year == 2011)
          .sorted((a, b) => a.value.compareTo(b.value))
          .map((t) => t.trader.name)
          .toList();

      expect(names[0], 'Brian');
      expect(names[1], 'Raoul');
    });
    test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오', () {
      final cambridgeNames = transactions!
          .where((element) => element.trader.city == 'Cambridge')
          .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
          .map((e) => e.trader.name);
      List<String> expectedNames = ['Alan', 'Brian', ' Raoul', 'Raoul'];
      expect(cambridgeNames, expectedNames);
    });

    test('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오', () {
      final List<String> allNames = [];
      transactions!
          .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
          .forEach((element) => allNames.add(element.trader.name));

      List<String> expectedAllNames = [
        'Brian',
        'Raoul',
        'Raoul',
        'Mario',
        'Mario',
        'Alan'
      ];
      expect(allNames, expectedAllNames);
    });

    test('5. 밀라노에 거래자가 있는가?', () {
      final isMilan =
          transactions!.any((element) => element.trader.city == 'Milan');
      expect(isMilan, true);
    });
    test('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오', () {
      final values = transactions!
          .where((element) => element.trader.city == 'Cambridge')
          .map((e) => e.value)
          .toList();
      List<int> expectedValues = [300, 1000, 400, 710, 700, 950];
      expect(values, expectedValues);
    });

    test('7. 전체 트랜잭션 중 최대값은 얼마인가?', () {
      final maxResult =
          transactions!.map((e) => e.value).reduce((e, v) => max(e, v));
      expect(maxResult, 1000);
    });

    test('8. 전체 트랜잭션 중 최소값은 얼마인가?', () {
      final minResult =
          transactions!.map((e) => e.value).reduce((e, v) => min(e, v));
      expect(minResult, 300);
    });
  });
}
