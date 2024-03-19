import 'dart:io';

// 1. 원본과 복사본 경로를 받는다
// 2. 원본 경로의 파일을 읽는다 (readAsStringSync)
// 3. 복사본 경로의 파일에 쓴다 (writeAsStringSync)

void copy(String source, String target) {
  final origin = File(source);
  final copy = File(target);

  copy.writeAsStringSync(origin.readAsStringSync());
}

void main() {
  final originFile = File('origin.txt');
  final copyFile = File('copy.txt');

  originFile.writeAsStringSync('Hello, World!');
  copyFile.writeAsStringSync('');

  copy(originFile.path, copyFile.path);
}