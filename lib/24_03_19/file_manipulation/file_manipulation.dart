import 'dart:io';

void copy(String source, String target) {
  final origin = File(source);
  final copy = File(target);

  copy.writeAsStringSync(origin.readAsStringSync());
}

void main() {
  // 원본 파일
  final originFile = File('origin.txt');

  // 복사본 파일
  final copyFile = File('copy.txt');

  // 원본에 내용 작성
  originFile.writeAsStringSync('Hello, World!');

  copy(originFile.path, copyFile.path);
}
