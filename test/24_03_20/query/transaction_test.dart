import 'dart:math';
import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_20/query/trader.dart';
import 'package:learn_dart_together/24_03_20/query/transaction.dart';
import 'package:test/test.dart';

void main() {
  group('query 과제 테스트', () {
    List<Transaction> transactions = [];

    setUp(() => transactions = [
      Transaction(Trader("Brian", "Cambridge"), 2011, 300),
      Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
      Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
      Transaction(Trader("Mario", "Milan"), 2012, 710),
      Transaction(Trader("Mario", "Milan"), 2012, 700),
      Transaction(Trader("Alan", "Cambridge"), 2012, 950)
    ]);

    test('2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하면 Brian, Raoul이 나온다', () {
      List<String> names;

      names = transactions
          .where((e) => e.year == 2011)
          .sorted((a, b) => a.value.compareTo(b.value))
          .map((e) => e.trader.name)
          .toList();

      expect(names[0] == 'Brian', true);
      expect(names[1] == 'Raoul', true);
      //2011년도 Trader가 2명인지 확인
      expect(() => names[3], throwsA(isA<RangeError>()));
    });

    test('거래자가 근무하는 모든 도시를 중복 없이 나열하면 Cambridge와 Milan이 나온다.', () {
      Set<String> cities;

      cities = transactions
          .map((e) => e.trader.city)
          .toSet();

      Set<String> expectCities = {'Cambridge', 'Milan'};

      expect(cities , equals(expectCities));
    });

    test('케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하면, Alan,Brian,Raoul 순이다.', () {
      List<String> names;

      names = transactions
          .where((e) => e.trader.city == 'Cambridge')
          .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
          .map((e) => e.trader.name)
          .toSet()
          .toList();

      List<String> expectNames = ['Alan', 'Brian', 'Raoul'];
      
      expect(names, equals(expectNames));
    });

    test('모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오, Alan,Brian,Mario,Raoul 순이다.', () {
      List<String> names;

      names = transactions
          .sorted((a, b) => a.trader.name.compareTo(b.trader.name))
          .map((e) => e.trader.name)
          .toSet()
          .toList();

      List<String> expectNames = ['Alan', 'Brian', 'Mario', 'Raoul'];

      expect(names, equals(expectNames));
    });

    test('밀라노에 거래자가 있는가를 확인', () {
      List<String> cities;

      cities = transactions.map((e) => e.trader.city).toList();

      expect(cities.contains('Milan'), true);
    });

    test('케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하면, 300, 1000, 400, 950이다.', () {
      List<int> values;

      values = transactions
          .where((e) => e.trader.city == 'Cambridge')
          .map((e) => e.value)
          .toList();

      List<int> expectValues = [300, 1000, 400, 950];

      expect(values, equals(expectValues));
    });

    test('전체 트랜잭션 중 최대값을 출력하면 1000이 나온다.', () {
      int maxValue;

      maxValue = transactions.map((e) => e.value)
          .reduce((value, element) => max(value, element));

      expect(maxValue == 1000, true);
    });

    test('전체 트랜잭션 중 최소값을 출력하면 300이 나온다.', () {
      int maxValue;

      maxValue = transactions.map((e) => e.value)
          .reduce((value, element) => min(value, element));

      expect(maxValue == 300, true);
    });
  });
}
