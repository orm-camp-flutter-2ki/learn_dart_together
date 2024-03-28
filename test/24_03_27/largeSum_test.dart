import 'package:learn_dart_together/24_03_27/largeSum.dart';
import 'package:test/test.dart';

void main() {
  group('larger number sum value test', () {
    test('numList.length > 1', () {
      List numList = [1, 2, 6, 4, 8, 19, -5];

      final result = largeSum(numList);
      print(result);
      expect(result == 27, true);
    });

    test('numList.length == 1', () {
      List numList = [19];

      final result = largeSum(numList);
      print(result);
      expect(result == 19, true);
    });

    test('numList.length == 0', () {
      List numList = [];

      final result = largeSum(numList);
      print(result);
      expect(result == 0, true);
    });
  });
}
