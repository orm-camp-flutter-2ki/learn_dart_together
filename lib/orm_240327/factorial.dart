int findFact(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * findFact(n - 1);
  }
}
