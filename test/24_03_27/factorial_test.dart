import 'package:learn_dart_together/24_03_27/factorial.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('factorial test', () {
    test('input number > 1', () {
      int result = factorial(5);

      print(result);
      expect(result == 119, false);
      expect(result == 120, true);
      expect(result == 121, false);
    });

    test('input number == 1', () {
      int result = factorial(1);

      print(result);
      expect(result == 0, false);
      expect(result == 1, true);
      expect(result == 2, false);
    });

    test('input number == 0', () {
      int result = factorial(0);

      print(result);
      expect(result == 0, false);
      expect(result == 1, true);
      expect(result == 2, false);
    });

    test('input number < 0', () {
      int result = factorial(-5);

      print(result);
      expect(result == 0, true);
      expect(result == 1, true);
      expect(result == 2, true);
    });
  });
}
