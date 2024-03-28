import 'dart:math';

import 'package:learn_dart_together/240327/algorithm.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  test('회문', () {
    expect(palindrome('///!!!///'), true);
    expect(palindrome('///!!!///!!!'), false);
  });
}