import 'package:learn_dart_together/240327/array.dart';
import 'package:test/test.dart';

void main() {
  test('배열에서 가장 큰수 두개를 더하는 함수 Test', () {
    final List<int> nums = [1, 2, 5, 3, 9, 8];

    Array add = Array();
    // print(add.sumMaxnum);
    expect(add.sumMaxNum(nums), 17);
  });
}
