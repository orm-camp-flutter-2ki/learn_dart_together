import 'dart:io';

void main() {
  int length = 10;

  print('등차수열을 생성합니다.');
  stdout.write('첫항과 공차를 공백으로 구분하여 입력해주세요: ');
  String input = stdin.readLineSync()!;

  // 문자열 양쪽의 공백을 제거
  String trimmedInput = input.trim();

  // 2개 이상의 문자열을 찾아내는 정규표현식
  final regex = RegExp(r"\s\s+");
  // 정규표현식을 통해 문자열을 split
  List<String> list = trimmedInput.split(regex);

  int initialValue = int.parse(list[0]);
  int commDiff = int.parse(list[1]);

  for(int i = 0; i < length; i++) {
    if (i == length -1) {
      stdout.write('$initialValue');
    } else {
      stdout.write('$initialValue ');
    }

    initialValue += commDiff;
  }
}