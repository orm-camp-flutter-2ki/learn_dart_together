import 'package:learn_dart_together/24_03_19/-1/exception_service.dart';
import 'package:test/test.dart';

void main() {
  group('ExceptionService 클래수', () {
    ExceptionService? exceptionService;
    setUp(() => exceptionService = ExceptionService(numString: '1'));
    tearDown(() => exceptionService = null);
    group('convertStringToInt 메소드는', () {
      test('문자열을 정수로 변환하여 반환한다.', () {
        // Given
        int expected = 1;
        exceptionService!.numString = '1';

        // When
        final int result = exceptionService!.convertStringToInt();

        // Then
        expect(result, expected);
      });

      test('문자열을 정수로 변환할 수 없을경우 defaultResult를 반환한다.', () {
        // Given
        final expected = ExceptionService.defaultResult;
        exceptionService!.numString = 'a';

        // When
        final result = exceptionService!.convertStringToInt();

        // Then
        expect(result, expected);
      });
    });
  });
}
