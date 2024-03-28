int getFactorial(int n) {
  int returnValue = 1;
  for (int i = 1; i <= n; i++) {
    returnValue *= i;
  }
  return returnValue;
}
