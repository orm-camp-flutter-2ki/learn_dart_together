import 'package:learn_dart_together/240321/timeout.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('함수를 실행하고 5초 이내에 완료되지 않으면, ', () {

    test('“timeout”을 출력하시오.', () async {
      // When
      String result = await timeoutTask();

      String expectedResult = 'timeout';
      // Then
      expect(result, expectedResult);
    });

    test('exception을 출력하시오.', () async {

      // Then
      expect(() async => waitTask().timeout(Duration(seconds: 5)), throwsException);
    });
  });
}