import 'package:learn_dart_together/240319/practice_1_try_catch.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('try-catch() 문을 사용하여 예외 처리를 하시오', () {
    var numString;
    TryCatch tryCatch = TryCatch();

    test('정상 처리', () {

      // Given(준비)
      numString = '10';

      // Then(검증)
      expect(tryCatch.checkException(numString), int.parse(numString));
    });

    test('예외가 발생하면 0으로 처리', () {

      // Given(준비)
      numString = '10.333';

      // Then(검증)
      expect(tryCatch.checkException(numString), 0);
    });
  });
}
