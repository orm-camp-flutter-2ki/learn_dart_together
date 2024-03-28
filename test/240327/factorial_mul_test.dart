import 'package:learn_dart_together/240327/factorial_mul.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('n!', () {
    //given
    int sol = 120;

    //when
    int result = FactorialMul(5);

    //then
    expect(result, sol);
  });
}
