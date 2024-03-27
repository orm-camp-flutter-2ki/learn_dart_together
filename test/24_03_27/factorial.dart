import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

int factorial(int k) {
  if (k == 0) {
    throw ArgumentError.value(k);
  }
  if (k == 1) {
    return 1;
  }
  int result = k;
  k--;
  while (k > 1) {
    result *= k;
    k--;
  }
  return result;
}

void main() {
  test('factorial 함수 테스트', ()
  {
    expect(factorial(5), 120);
    expect(factorial(4), 24);
    expect(factorial(3), 6);
    expect(factorial(2), 2);
    expect(factorial(1), 1);

  });
}
