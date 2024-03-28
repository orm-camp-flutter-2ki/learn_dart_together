Future<int> factorial(int n) async {
  int result = 1;
  if (n > 0) {
    for (int i = 2; i <= n; i++) {
      result *= i;
    }
    return result;
  } else {
    return n;
  }
}
