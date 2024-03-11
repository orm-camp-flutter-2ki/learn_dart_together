void main() {
  // 숫자 판별
  print(solution1(1111));
}

String solution1(int num) {
  String result = num.toString();

  int firstNum = num % 10;

  while (num > 0) {
    num ~/= 10;

    if (firstNum != num % 10 && num > 0) {
      return result = 'No';
    }
  }

  return result;
}
