import 'package:learn_dart_together/24_03_21/timeout/timeout_future.dart';
import 'package:test/test.dart';

void main() {
  String result = '';

  test('timeoutFuture의 동작이 5초가 초과되면, result == timeout 이다.',() async {
    try {
      result = await timeoutFuture(6).timeout(Duration(seconds: 5));
    } catch(e) {
      result = 'timeout';
    }

    expect(result == 'timeout', true);
  });

  test('timeoutFuture의 동작이 5초 미만이면, result == ok 이다.',() async {
    try {
      result = await timeoutFuture(4).timeout(Duration(seconds: 5));
    } catch(e) {
      result = 'timeout';
    }

    expect(result == 'ok', true);
  });

  test('timeoutFuture의 동작이 5초 이면, result == ok 이다.',() async {
    try {
      result = await timeoutFuture(5).timeout(Duration(seconds: 5));
    } catch(e) {
      result = 'timeout';
    }

    expect(result == 'ok', true);
  });
}