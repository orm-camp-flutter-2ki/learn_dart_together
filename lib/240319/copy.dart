import 'dart:io';

void main() {
  copy('lib/240319/source.txt', 'lib/240319/target3.txt');
}

void copy(String source, String target) {
  // 소스 파일 열기
  final sourceFile = File(source);
  final sourceContent = sourceFile.readAsStringSync();

  // 대상 파일에 복사하기
  final targetFile = File(target);
  targetFile.writeAsStringSync(sourceContent);
}
