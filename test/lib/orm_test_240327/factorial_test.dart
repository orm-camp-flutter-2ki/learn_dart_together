import 'package:learn_dart_together/orm_240327/factorial.dart';
import 'package:test/test.dart';

void main() {
  test('factorial test', () {
    int n = 5;

    final result2 = Factorial(n);
    print(result2);

    expect(result2 == 120, true);
  });
}
