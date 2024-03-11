import 'dart:math';

import 'package:learn_dart_together/24_03_07/cleric.dart';
import 'package:test/test.dart';

void main() {
  test('Cleric full parameter test', () {
    //given when
    Cleric newCleric = Cleric('아서스', hp: 40, mp: 5);

    //then
    expect(newCleric.hp, equals(40));
    expect(newCleric.mp, equals(5));
  });

  test('Cleric two parameter test', () {
    //given when
    Cleric newCleric = Cleric('아서스', hp: 35);

    //then
    expect(newCleric.hp, equals(35));
    expect(newCleric.mp, equals(10));
  });

  test('Cleric one parameter test', () {
    //given when
    Cleric newCleric = Cleric('아서스');

    //then
    expect(newCleric.hp, equals(50));
    expect(newCleric.mp, equals(10));
  });
}
