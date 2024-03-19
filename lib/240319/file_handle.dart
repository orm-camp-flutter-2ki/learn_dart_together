import 'dart:io';

void main() {
  final myFile = File('save.txt');

  // 파일 쓰기
  myFile.writeAsStringSync('Hello, world!');

  // 파일 읽기
  final text = myFile.readAsStringSync();
  print(text);
}