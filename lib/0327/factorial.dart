int factorial(int N) {
  if (N <= 0) {
    throw Exception('1 이상의 양수만 가능합니다.');
  }
  int factorialResult = 1;

  for (int i = 1; i <= N; i++) {
    factorialResult *= i;
  }

  return factorialResult;
}
