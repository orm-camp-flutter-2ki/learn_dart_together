import 'package:learn_dart_together/240321/timer.dart';
import 'package:test/test.dart';

void main() {
  test('Timeout test', () async {
    final text = await Timer().timeoutFuture(6); // 6
    print(text);

    expect(text == 'timeout', true);
  });
}