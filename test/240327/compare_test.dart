import 'package:learn_dart_together/240327/compare.dart';
import 'package:test/test.dart';

void main() {
  test('리스트 중 가장 큰 두 수의 합 반환', () {
    List<int> list1 = [1, 2, 5, 3, 9, 8];
    List<int> list2 = [1, 2, 5, 3, 3, 2];
    List<int> list3 = [7, 2, 5, 6, 1, 3];
    expect(compare(list1), 17);
    expect(compare(list2), 8);
    expect(compare(list3), 13);
  });
}
