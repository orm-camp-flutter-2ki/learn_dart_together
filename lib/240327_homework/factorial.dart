void main() {
  print(factorial(5));
}

int factorial(int num) {
  if (num < 0) {
    throw Exception('자연수만 넣어주세요');
  }
  return num <= 1 ? 1 : num * factorial(num - 1);
}
