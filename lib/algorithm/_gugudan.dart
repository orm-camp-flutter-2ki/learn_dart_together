/*
<구구단 계산기>
// 숫자를 입력받아서 구구단을 출력한다.
숫자를 입력하세요.

// 3입력시 아래와 같이 출력한다.
3, 6, 9, 12, 15, 18, 21, 24, 27
*/

import 'dart:convert';
import 'dart:io';

void main() {
  print('숫자를 입력하세요.');
  String numStr = stdin.readLineSync(encoding: utf8)!;

  int num = int.parse(numStr);

  for(int i = 1; i <= 9; i++) {
    if (i == 1) {
      stdout.write('${num * i}');
    } else {
      stdout.write(', ${num * i}');
    }
  }
}