void main() {
  print(printLargerNum(100, 10));
}

/**
 * 두 개의 숫자를 받아 더 큰 숫자를 출력하는 함수.
 */
String printLargerNum(int a, int b) {
  String result;

  //
  if(a == b) return 'eq';
  result = a > b ? result = a.toString() : result = b.toString();

  return result;
}