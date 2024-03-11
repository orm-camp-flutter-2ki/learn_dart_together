void main() {
  /// 짝수 홀수
  /// 홀짝이 한 쌍으로 있을 경우 yes, 다를 경우 no를 출력 하는 함수를 작성 한다.

  print(solution1(16, 22));
  print(solution2(15, 27));
}

String solution1(int a, int b) {
  String result = 'YES';

  if (a.isOdd == b.isOdd) {
    result = 'NO\n';
  } else if (a.isEven == b.isEven) {
    result = 'NO\n';
  }

  return result;
}

String solution2(int a, int b) {
  String result = 'YES';

  if (a.isOdd == b.isOdd || a.isEven == b.isEven) {
    result = 'NO\n';
  }

  return result;
}

String solution3(int a, int b) {
  String result = 'YES';
  if (a % 2 == 0 && b % 2 == 0) {
    result = 'NO';
  }
  return result;
}

