import 'package:learn_dart_together/0327/two_max_number.dart';
import 'package:test/test.dart';

void main() {
  test('리스트에서 가장 큰 두 수를 찾아서 더하기', () {
    final int minInt = -9223372036854775808;
    final int maxInt = 9223372036854775807;

    expect(addTwoMaxNumber([1, 2, 5, 3, 9, 8]), 17);
    expect(addTwoMaxNumber([0]), 0);
    expect(addTwoMaxNumber([]), 0);
    expect(addTwoMaxNumber([-1]), -1);
    expect(addTwoMaxNumber([-1, -1]), -2);
    expect(addTwoMaxNumber([2, 3, 1]), 5);
    expect(addTwoMaxNumber([minInt, maxInt]), -1);
    expect(() => addTwoMaxNumber([minInt, -1]), throwsException);
    expect(() => addTwoMaxNumber([maxInt, 1]), throwsException);
    expect(() => addTwoMaxNumber([maxInt, maxInt]), throwsException);
    expect(() => addTwoMaxNumber([maxInt, maxInt]), throwsException);
  });
}