int factorial(int n) {
  int result = n;

  for (int i = n - 1; i >= 1; i--) {
    result *= i;
  }

  return result;
}
