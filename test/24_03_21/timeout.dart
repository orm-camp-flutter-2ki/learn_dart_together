import 'package:learn_dart_together/24_03_21/timeout.dart';
import 'package:test/test.dart';

void main() {
  // Future<String> timeoutFuture() async
  group('timeoutFuture()는', () {
    test('실행에 5초 미만이 걸리면 ok를 반환한다.', () async {
      // Given
      final expected = 'ok';

      // When
      final result = await timeoutFuture(limit: 4);

      // Then
      expect(result, expected);
    });

    test('실행에 5초 이상이 걸리면 timeout를 반환한다.', () async {
      // Given
      final expected = 'timeout';

      // When
      final result = await timeoutFuture(limit: 6);

      // Then
      expect(result, expected);
    });
  });
}