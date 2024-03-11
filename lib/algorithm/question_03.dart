void main() {
  /// 등차수열문제

  print(solution1(1, 5));
}

String solution1(int num, int gap) {
  String result = '$num';

  for (int i = 1; i < 10; i++) {
    int cal = num + (gap * i);
    result += ' $cal';
  }

  return result;
}
