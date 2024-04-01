import 'package:learn_dart_together/orm_240327/list_sum.dart';
import 'package:test/test.dart';

void main() {
  test('sumList', () {
    List<int> randomList = [5, 6, 7, 8, 9, 2, 1, 4];

    final result = randomList.findSum();
    // print(result);
    expect(result == 17, true);
  });
}
