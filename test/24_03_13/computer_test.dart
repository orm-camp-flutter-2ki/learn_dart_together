import 'package:learn_dart_together/24_03_13/computer.dart';
import 'package:test/test.dart';

void main() {
  group('Computer 클래스', () {
    Computer? computer;
    setUp(() => computer = Computer(
        name: '맥북 프로',
        price: 2000000,
        color: '실버',
        weight: 1.4,
        makerName: '애플'));
    tearDown(() => computer = null);

    group('generateDescription 메소드는', () {
      test('자신을 소개하는 문자열을 리턴한다.', () {
        // Given
        String expected = '이번에 소개할 컴퓨터는 맥북 프로입니다. 가격은 2000000원이며, 색상은 '
            '실버입니다. 무게는 1.4이며, 제조사는 애플입니다.';

        // When
        String result = computer!.generateDescription();

        // Then
        expect(result, equals(expected));
      });
    });

    group('set weight 메소드에 double 인자를 넣어서 호출하면', () {
      test('weight 값을 변경한다', () {
        // Given
        double expected = 1.3;

        // When
        computer!.weight = expected;

        // Then
        expect(computer!.weight, equals(expected));
      });
    });
  });
}
