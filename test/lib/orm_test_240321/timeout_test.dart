import 'package:learn_dart_together/orm_240321/timeout.dart';
import 'package:test/test.dart';

void main() {
  group('ok가 나올때', () {
    test('timeout test', () async {
      final result = 'ok';

      final timer = await timeoutFuture(sec: 3);

      expect(timer, result);
    });

    test('timeout이 나올때', () async {
      // Given
      final result = 'timeout';

      // When
      final timer = await timeoutFuture(sec: 6);

      // Then
      expect(timer, result);
    });
  });
}
