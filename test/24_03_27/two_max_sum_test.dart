import 'package:collection/collection.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

int twoMaxSum(List<int> list) {
  final changedList = list.sorted((a, b) => b.compareTo(a));
  return changedList[0] + changedList[1];
}

void main() {
  test('리스트에서 가장 큰 두 수 더하는 함수 테스트', () {
    List<int> expectedList = [1, 2, 3, 4, 5, 6];
    expect(twoMaxSum(expectedList), 11);

  });
}
