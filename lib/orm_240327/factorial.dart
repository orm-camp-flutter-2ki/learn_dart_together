int findFact(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * findFact(n - 1);
  }
}

int Factorial(int n) {
  if (n == 1) {
    return 1;
  }

  int result = 1;
  while (n > 1) {
    result *= n--;
  }
  return result;
}
