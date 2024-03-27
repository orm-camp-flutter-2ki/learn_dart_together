import 'package:learn_dart_together/240327/factorial.dart';
import 'package:test/test.dart';

void main() {
  test('factorial Test', () {
    Factorial factorial = Factorial();
    expect(factorial.FactorialFun(0), 1);
    expect(factorial.FactorialFun(5), 120);
  });
}
