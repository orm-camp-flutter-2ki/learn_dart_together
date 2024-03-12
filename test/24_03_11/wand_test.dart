import 'package:learn_dart_together/24_03_11/wand.dart';
import 'package:test/test.dart';

void main() {
  group('wand 클래스', () {
    test('name 속성에 3글자 미만을 할당하면 Exception이 난다.', () {
      // Given When Then
      expect(
              () => Wand(name: '완드', power: 0.5),
          throwsA(predicate((e) =>
          e is Exception &&
              e.toString() == 'Exception: 이름은 3글자 이상이어야 합니다.')));
    });

    test('name 속성에 3글자 이상을 할당하고 power속성에 0.5미만으로 할당하면 기본값은 0.5가 된다.', () {
      // Given
      String name = '완드이름';
      double power = 0.3;

      // When
      Wand wand = Wand(name: name, power: power);

      // Then
      expect(wand.name, equals(name));
      expect(wand.power, equals(0.5));
    });

    test('name 속성에 3글자 이상을 할당하고 power속성에 100.0이상으로 할당하면 power는 100.0이 된다.', () {
      // Given
      String name = '완드이름';
      double power = 100.3;

      // When
      Wand wand = Wand(name: name, power: power);

      // Then
      expect(wand.name, equals(name));
      expect(wand.power, equals(100.0));
    });
  });
}