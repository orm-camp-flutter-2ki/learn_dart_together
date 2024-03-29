import 'package:collection/collection.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

num addMaxAndSecondMax(List<num> list) {
  num result;

  switch (list.length) {
    case 0:
      result = 0;
    case 1:
      result = list[0];
    default:
      final reversedList =
          list.sorted((a, b) => a.compareTo(b)).reversed.toList();

      result = reversedList[0] + reversedList[1];
  }

  return result;
}

void main() {
  group('addMaxAndSecondMax 함수는', () {
    // shuffle 은 mutator 이므로 값을 반환 하게 하려면 .. 구문을 사용해야 함

    test('리스트에서 가장 큰 두수를 찾아 더한값을 반환 합니다. (int)', () {
      final intList = [1, 2, 3, 4, 5, 5, 6, 7, 8]..shuffle();

      final actualNum = addMaxAndSecondMax(intList);

      expect(actualNum, 15);
    });
    test('리스트에서 가장 큰 두수를 찾아 더한값을 반환 합니다. (double)', () {
      final doubleList = [
        1.1,
        2.3,
        3.8,
        5.5,
        5.1,
        6.7,
        7.6,
        8.9,
        12.3,
        50.8,
        34.0
      ]..shuffle();

      final actualNum = addMaxAndSecondMax(doubleList);

      expect(actualNum, 84.8);
    });
    test('리스트에서 가장 큰 두수를 찾아 더한값을 반환 합니다. (num)', () {
      final mixedList = [4, 6.7, 7.6, 8, 12.3, 67, 5, 5, 6, 7, 8]..shuffle();

      final actualNum = addMaxAndSecondMax(mixedList);

      expect(actualNum, 79.3);
    });
  });
}
