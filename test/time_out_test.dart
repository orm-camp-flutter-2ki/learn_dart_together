import 'dart:async';

import 'package:learn_dart_together/24_03_21/time_out.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('time out test', () {
    expect(() async => await timeoutFuture().timeout(Duration(seconds: 5)), throwsA(isA<TimeoutException>()));
  });
}