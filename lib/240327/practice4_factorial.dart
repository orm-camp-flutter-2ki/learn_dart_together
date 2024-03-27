Future<int> factorial(int n) async {
  int resultFactorial = await factorial(n);
  return Future.value(resultFactorial);
}

void main() async {
  int result = await factorial(5);
  print(result);
}
