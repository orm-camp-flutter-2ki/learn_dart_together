import 'package:learn_dart_together/24_03_27/add_big_two.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('about add big two sum', () {
    test('legth 0', () {
      final List<int> arr = [];

      final expected = 0;

      expect(addTwoBig(arr), equals(expected));
    });

    test('length 1', () {
      final List<int> arr = [10];

      final expected = 10;

      expect(addTwoBig(arr), equals(expected));
    });

    test('length 2', () {
      final List<int> arr = [4, 5];

      final expected = 9;

      expect(addTwoBig(arr), equals(expected));
    });

    test('lenght of 3 or more', () {
      final arr = [1, 2, 5, 3, 9, 8];

      final expected = 9 + 8;

      expect(addTwoBig(arr), equals(expected));
    });
  });
}
