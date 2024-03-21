import 'dart:math';

import 'package:learn_dart_together/240321/timeout.dart';
import 'package:test/test.dart';

void main() {
  group('타임', () {
    test('시간초과', () async {
      //given
      String sol1 = 'timeout';

      //when
      String time = await timeoutFuture(5);

      //then
      expect(time, sol1);
    });
    test('시간충분', () async {
      //given
      String sol1 = 'ok';

      //when
      String time = await timeoutFuture(6);

      //then
      expect(time, sol1);
    });
  });
}
