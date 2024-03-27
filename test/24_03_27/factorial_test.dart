import 'dart:math';

import 'package:learn_dart_together/24_03_27/factorial.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('factorial function test', () {
    final test = factorial(5);
    final expected = 120;

    expect(test == expected, true);
  });
}
