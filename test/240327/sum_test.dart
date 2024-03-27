import 'package:learn_dart_together/240327/sum.dart';
import 'package:test/test.dart';

void main() {
  test('Sum Test', () {
    List<int> list = [1, 2, 5, 3, 9, 8];
    expect(Sum().sumTwoLargestNumber(list), 17);

    list.add(10);
    expect(Sum().sumTwoLargestNumber(list), 19);
  });
}