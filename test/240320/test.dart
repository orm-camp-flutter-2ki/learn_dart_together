import 'dart:math';
import 'package:collection/collection.dart';
import 'package:learn_dart_together/240320/query.dart';
import 'package:test/test.dart';

void main() {
  test('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오', () {
    var expectedList = ['Brian', 'Raoul'];
    final stage1 = transactions.where((transaction) =>
    transaction.year == 2011); //where 함수 이용해서 년도가 2011년인 트랜잭션 필터링
    final stage2 = stage1.toList(); //리스트로 변환
    final stage3 = stage2.sorted(
            (a, b) =>
            a.value.compareTo(b.value)); //sorted 이용 트랜잭션을 가격에 따라 오름차순 정렬
    final state4 = stage3
        .map((transaction) => transaction.trader.name); //map 이용 거래자의 이름 추출
    state4.forEach(print); // state.4 foreach를 이용 각 거래자 이름 출력
    // Brian
    // Raoul
    expect(state4, expectedList);
  });
  test('2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오', () {
    var expectedList = ['Cambridge', 'Milan'];
    final stage1 = transactions
        .map((transaction) => transaction.trader.city) // city로 변환
        .toSet(); //중복 불가
    stage1.forEach(print);
    expect(stage1, expectedList);
  });
  // Cambridge
  // Milan
  test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오', () {
    var expectedList = ['Alan', 'Brian', 'Raoul', 'Raoul'];
    final stage1 = transactions
        .where((transaction) => transaction.trader.city == "Cambridge")
        .map((transaction) => transaction.trader.name);
    final cambridgeTragerList = stage1.sorted();

    bool expected = true;

    final stage2 = stage1.sorted(
            (a, b) => a.compareTo(b)); //sorted 이용 트랜잭션을 가격에 따라 오름차순 정렬

    for (int i = 0; i < stage2.length; i++) {
      if (expectedList[i] != stage2[i]) {
        expected = false;
        break;
      }
    }
      print(stage2);
      expect(expected, true);
      // [Alan, Brian, Raoul, Raoul]
    });
  test('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오', () {
    var expectedList = ['Brian', 'Alan', 'Raoul', 'Raoul'];
    final stage1 = transactions
        .where((transaction) => transaction.trader.city == "Cambridge")
        .map((transaction) => transaction.trader.name);

    bool expected = true;

    final stage2 = stage1.sorted(
            (a, b) => a.compareTo(b)); //sorted 이용 트랜잭션을 가격에 따라 오름차순 정렬 이터러블형임

    for (int i = 0; i < stage2.length; i++) {
      if (expectedList[i] != stage2[i]) {
        expected = false;
        break;
      }
    }
    print(stage2);
    expect(expected, false);
    // [Alan, Brian, Raoul, Raoul]
  });
  test('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오', () {
    var expectedList = ['Alan', 'Brian', 'Mario', 'Mario', 'Raoul', 'Raoul']; //값을 보는 것이다. print문이 맞는지 테스트하는 것이 아니라
  final stage1 = transactions
      .map((transaction) => transaction.trader.name) //iteratoe [name] | 고차함수임
      .toList() // List [name]
  ..sort(); //.. -> void 함수에서 사용 갑ㅅ을 반환하지 않는데 stage1에 넣고 싶을 떄 사용하는 것 //sorting 이 된 상태의 배열을 stage1에 넣어줌
  stage1.forEach(print);
  expect(stage1, expectedList);
  // print(stage1.map((el) => el + '1')); //변환. 매핑 시켜주고 싶을때 사용하는 것
  // Alan
  // Brian
  // Mario
  // Mario
  // Raoul
  // Raoul
  });
  test('5. 밀라노에 거래자가 있는가?', () {
  final stage1 = transactions
      .where((transaction) => transaction.trader.city == "Milan")
      .any((transaction) => true);
  print(stage1);
  expect(stage1, true);
  // true
  });
  test('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오', () {
    var expectedList = [ 300, 1000, 400, 950 ];
  final stage1 = transactions
      .where((e) => e.trader.city == "Cambridge")
      .map((e) => e.value)
      .toList();
  print(stage1);
  expect(stage1, [300, 1000, 400, 950]); //[]이거로 묶어서 가능
  // [300, 1000, 400, 950]
  });
  test('7. 전체 트랜잭션 중 최대값은 얼마인가?', () {
  final stage1 = transactions
      .map((transaction) => transaction.value)
      .reduce((a, b) => max(a, b));
  print(stage1);
  expect(stage1, 1000);
  // 1000
  });
  test('8. 전체 트랜잭션 중 최소값은 얼마인가?', () {
  final stage1 = transactions
      .map((transaction) => transaction.value)
      .reduce((a, b) => min(a, b));
  print(stage1);
  expect(stage1, 300);
  // 300
  });
}
