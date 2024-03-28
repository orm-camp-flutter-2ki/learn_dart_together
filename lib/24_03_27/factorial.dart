int factorial(int num) {
  int result = 1;

  // int i; 로 하면 unused 이니까 이렇게
  for (; num > 1; num--) {
    result *= num;
  }
  return result;
}
//
// void main() {
//   print(factorial(5));
// }
