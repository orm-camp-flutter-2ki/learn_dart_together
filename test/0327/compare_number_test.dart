import 'package:learn_dart_together/0327/compare_number.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('compare Number test', () {
    test('들어간 수 > 0 일 때', () {
      expect(compareNumber([1, 5, 7, 3, 9]), 16);
      expect(compareNumber([10, 50, 20, 40, 30, 75]), 125);
    });
    test('들어간 수 < 0 일 때', () {
      expect(compareNumber([0, -5, -1, -8, -4, -9]), -1);
    });
  });
}
