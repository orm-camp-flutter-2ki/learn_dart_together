import 'dart:io';
import 'dart:convert';

void main() {
  print('입력받을 문자열의 개수를 입력해 주세요');
  String numOfStringStdin = stdin.readLineSync(encoding: utf8)!;

  if (numOfStringStdin == "0" || numOfStringStdin.isEmpty) {
    print('프로그램을 종료합니다.');
  }

  int numOfString = int.parse(numOfStringStdin);

  print('문자열을 입력해주세요: ');
  List<String> list = [];
  for (int i = 0; i < numOfString; i++) {
    list.add(stdin.readLineSync(encoding: utf8)!);
  }

  String joinedString = list.join(',');
  joinedString = 'Hello $joinedString.';

  print(joinedString);
}