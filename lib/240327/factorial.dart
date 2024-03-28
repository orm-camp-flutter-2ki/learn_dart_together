int factorial(int n) {
  if (n < 0) {
    throw ArgumentError.value(n);
  }
  if (n == 0) {
    return 1; //0의 팩토리얼은 1이므로 1을 반환
  }
  int result = n;
  n--;
  while (n > 1) {
    result *= n;
    n--;
  }
  return result;
}
