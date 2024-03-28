import 'package:learn_dart_together/0327/factorial.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('factorial 양의 수', () {
    expect(factorial(1) == 1, true);
    expect(factorial(5) == 120, true);
  });

  test('factorial 0 & 음의 수', () {
    expect(() => factorial(0), throwsException);
    expect(() => factorial(-4), throwsException);
  });
}
