import 'dart:io';

// 파일 복사 함수
void copy(String source, String target) {
  File(source).copySync(target);
}

void main() {
  // 파일 생성 or 열기
  final myFile = File('save.txt');

  // 파일 내용 쓰기 (방식: 덮어 쓰기)
  myFile.writeAsStringSync('Hello, world!');
  // 파일 내용 쓰기 (방식: 덮어 쓰기)
  myFile.writeAsStringSync('Hello, World Cup!');
  // 파일 내용 쓰기 (방식: 이어 쓰기)
  myFile.writeAsStringSync('\nAgain World 2002', mode: FileMode.append);

  // 파일 복사 실행
  copy('save.txt', 'copied_save.txt');
}


void copy2(String source, String target) {
  File(target).writeAsStringSync(File(source).readAsStringSync());
}