//[?] 두개의 숫자가 짝수와 홀수의 쌍이면 'YES', 그렇지 않다면 'NO' 출력...

void main() {
  print(solution02(3, 5));
  print(solution02(2, 5));
  print(solution02(6, 4));
}

String solution02 (int a, int b) {
  //[1] input
  String result = '';

  //[2] process
  if(a % 2 == 0 && b % 2 == 1) {
    result = 'YES';
  } else if (a % 2 == 0 && b % 2 == 1) {
    result = 'YES';
  } else {
    result = 'NO';
  }

  //[3] output
  return result;


}