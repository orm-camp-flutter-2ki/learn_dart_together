import 'package:test/test.dart';

int factorial(int k) {
  if (k < 0) {
    throw ArgumentError.value(k);
  }
  if (k == 0) {
    return 1;
  }
  var result = k;
  k--;
  while (k > 1) {
    result *= k;
    k--;
  }
  return result;
}

void main() {
  group('Factorial Tests', () {

    test('Invalid input', () {
      expect(() => factorial(-1), throwsArgumentError);
      expect(() => factorial(-5), throwsArgumentError);
    });

    test('Factorial of 0', () {
      expect(factorial(0), 1);
    });

    test('Factorial of positive numbers', () {
      expect(factorial(1), 1);
      expect(factorial(2), 2);
      expect(factorial(3), 6);
      expect(factorial(4), 24);
      expect(factorial(5), 120);
      expect(factorial(6), 720);
    });
  });
}