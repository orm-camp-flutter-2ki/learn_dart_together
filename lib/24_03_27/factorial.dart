int factorial(int n) {
  int a = 1;
  for (int i = n; i > 1; i--) {
    a *= i;
  }
  return a;
}
