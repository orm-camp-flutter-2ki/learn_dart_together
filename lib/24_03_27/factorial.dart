int factorial(int n) {
  int result = 1;

  if (n >= 0) {
    for (int i = 1; i < n + 1; i++) {
      result *= i;
    }
  } else {
    throw Exception('음수는 넣을 수 없다.');
  }

  return result;
}
