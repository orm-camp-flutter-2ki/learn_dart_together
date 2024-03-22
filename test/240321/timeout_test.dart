import 'dart:async';
import 'package:test/test.dart';
import 'package:learn_dart_together/240321/timeout.dart';

void main() {
  group('timeoutFuture', () {
    test('5초 이내이면 ok가 출력', () async {
      // Given
      Future<String> timeoutFuture() async {
        await Future.delayed(Duration(seconds: 5));
        return 'ok';
      }
      // When
      String result = await timeoutFuture()
          .timeout(Duration(seconds: 5), onTimeout: () => 'timeout');
      // Then
      expect(result, 'ok');
    });

    test('5초 초과하면 tiemout이 출력', () async {
      // Given
      Future<String> timeoutFuture() async {
        await Future.delayed(Duration(seconds: 6));
        return 'ok';
      }
      // When
      String result = await timeoutFuture()
          .timeout(Duration(seconds: 5), onTimeout: () => 'timeout');
      // Then
      expect(result, equals('timeout'));
    });
  });
}