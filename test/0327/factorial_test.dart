import 'package:learn_dart_together/0327/factorial.dart';
import 'package:test/test.dart';

void main() {
  test('factorial 값 계산', () {
    expect(getFactorial(0), 1);
    expect(getFactorial(1), 1);
    expect(getFactorial(2), 2);
    expect(getFactorial(5), 120);
  });
}