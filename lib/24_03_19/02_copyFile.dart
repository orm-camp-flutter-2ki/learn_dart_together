import 'dart:io';

void copy(String source, String target, String wantName) {
  final file = File(source);

  final fileContent = file.readAsStringSync();

  // 새로 생성한 파일의 원하는 이름
  final name = wantName;

  final copyFile = File('$target/$name');

  copyFile.writeAsStringSync(fileContent);
}

void main() {
  copy('lib/24_03_19/original.txt', 'lib/24_03_19/copyWrite', 'copy');
}
