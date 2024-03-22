import 'dart:async';
import 'package:learn_dart_together/24_03_21/time_out.dart';
import 'package:test/test.dart';

void main() {

  group('time out 문제 방법1', () {
    test('5초가 지나면 timeout을 출력한다.', () async {
      final res = await timeoutFuture().timeout(
        const Duration(seconds: 5),
        onTimeout: () => 'timeout',
      );

      expect(res == 'timeout', true);
    });
  });

  group('time out 문제 방법2', () {
    test('5초가 지나면 timeout을 출력한다.', () async {
      expect(() async => await timeoutFuture().timeout(Duration(seconds: 5)),
          throwsException);
    });
  });
}
