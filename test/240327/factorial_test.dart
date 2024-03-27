import 'package:learn_dart_together/240327/factorial.dart';
import 'package:test/test.dart';

void main() {
  test('Factorial Test', () {
    expect(getFactorial(5) == 120, true);
    expect(getFactorial(4) == 24, true);
    expect(getFactorial(3) == 6, true);
    expect(getFactorial(2) == 2, true);
    expect(getFactorial(1) == 1, true);
  });
}