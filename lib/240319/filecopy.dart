import 'dart:io';

void copy(String source, String target) {
  final sourceFile = File(source);
  final text = sourceFile.readAsStringSync(); //소스파일 읽어서 text로 저장
  final targetFile = File(target);
  targetFile.writeAsStringSync(text); //타켓 파일에 text쓰기
}