import 'dart:io';

/// <구구단 계산기>
/// 숫자를 입력받아서 구구단을 출력한다.
/// 숫자를 입력하세요.
/// 3 입력시 아래와 같이 출력한다.
/// 3, 6, 9, 12, 15, 18, 21, 24, 27
void main() {
  print('숫자를 입력하세요.');
  String input = stdin.readLineSync()!;
  int num = int.parse(input);
  String result = '$num';

  for (int i = 2; i < 10; i++) {
    int cal = num * i;
    result += ' $cal';
  }
  print('$result');
}
