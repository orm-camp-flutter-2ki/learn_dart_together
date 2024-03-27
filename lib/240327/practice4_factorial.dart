Future<int> factorial(int n) async {
  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }
  return result;
}

void main() async {
  int result = await factorial(5);
  print(result);
}
