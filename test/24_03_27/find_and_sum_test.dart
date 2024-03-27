import 'package:learn_dart_together/24_03_27/find_and_sum.dart';
import 'package:test/test.dart';

void main() {
  test('큰 값 2개 더하기', () {
    expect(sumLargeTwo([1, 2, 5, 3, 9, 8]), 17);
  });
}
