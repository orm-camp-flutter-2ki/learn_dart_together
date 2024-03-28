import 'package:learn_dart_together/240327/maxplus.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('정수 배열 또는 리스트', () {
    test('가장 큰 두 수를 더한 값', () {
      //given
      int sol = 72;

      //when
      int result = MaxPlus([1, 2, 5, 3, 9, 8]);

      //then
      expect(result, sol);
    });
  });
}
