import 'dart:io';

void main() {
  final file = File('save.txt');

  // 열고 쓰거나 읽고 닫는다
  String text = file.readAsStringSync();

  print(text);
}
