int factorial(int N) {
  if (N < 0) {
    throw Exception('0 이상의 정수만 가능합니다.');
  }
  int factorialResult = 1;

  for (int i = 1; i <= N; i++) {
    factorialResult *= i;
  }

  return factorialResult;
}

// rexursive 재귀함수
// 터지기 쉽다. 스택 오버 플로우
//   return n <= 0 ? 1 : N *= factorialResult(N - 1);
