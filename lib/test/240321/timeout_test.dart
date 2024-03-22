
import 'package:learn_dart_together/240321/timeout.dart';
import 'package:test/test.dart';

void main() {
  group('타임', () {
    test('시간초과', () async {
      //given
      String sol = 'timeout';

      //when
      String time = await timeoutFuture(5);

      //then
      expect(time, sol);
    });
    test('시간충분', () async {
      //given
      String sol = 'ok';

      //when
      String time = await timeoutFuture(6);

      //then
      expect(time, sol);
    });
  });
}
