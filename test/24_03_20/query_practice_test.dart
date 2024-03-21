import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_20/query_practice.dart';
import 'package:test/test.dart';

void main() {
  group('문제 1번', () {
    test('2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열한다.', () {
      final expected = ["Brian", "Raoul"];

      final res = Query().question1();

      expect(ListEquality().equals(res, expected), true);
      // expect( res, expected);
    });
  });

  group('문제 2번', () {
    test('거래자가 근무하는 모든 도시를 중복 없이 나열한다.', () {
      final expected = ["Cambridge", "Milan"];

      final res = Query().question2().toList();

      expect(ListEquality().equals(res, expected), true);
    });
  });

  group('문제 3번', () {
    test('케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 반환', () {
      final expected = ["Brian", "Raoul", "Alan"];

      final res = Query().question3().toList();

      expect(ListEquality().equals(res, expected), true);
    });
  });

  group('문제 4번', () {
    test('모든 거래자의 이름을 알파벳순으로 정렬하여 반환', () {
      final expected = ["Alan", "Brian", "Mario", "Mario", "Raoul", "Raoul"];

      final res = Query().question4();

      expect(ListEquality().equals(res, expected), true);
    });
  });

  group('문제 5번', () {
    test('밀라노에 거래자가 있는지 여부', () {
      final res = Query().question5();

      expect(res, true);
    });
  });

  group('문제 6번', () {
    test('케임브리지에 거주하는 거래자의 모든 트랙잭션값을 반환한다', () {
      final expected = [300, 1000, 400, 950];

      final res = Query().question6();

      expect(res, expected);
    });
  });

  group('문제 7번', () {
    test('전체 트랜잭션 중 최대값', () {
      final res = Query().question7();

      expect(res, 1000);
    });
  });

  group('문제 8번', () {
    test('전체 트랜잭션 중 최소값', () {
      final res = Query().question8();

      expect(res, 300);
    });
  });
}
