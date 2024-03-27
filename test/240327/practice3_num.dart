import 'package:learn_dart_together/240327/practice3_num.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('가장 큰 2 숫자의 합구하기', () {
    int expectResult = 17;
    // Given
    addNum([1, 2, 5, 3, 9, 8]);

    expect(expectResult, 17);
  });
}
