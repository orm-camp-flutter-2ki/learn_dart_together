import 'package:learn_dart_together/240327/practice4_factorial.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('factorial test', () async {
    int testFactorial = await factorial(4);
    int expectedValue = 24;

    expect(testFactorial, expectedValue);
  });
  test('factorial test2', () async {
    int testFactorial = await factorial(-5);
    int expectedValue = -5;

    expect(testFactorial == expectedValue, true);
  });
}
