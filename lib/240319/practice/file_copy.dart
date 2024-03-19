import 'dart:io';

void copy(String source, String target) {
  // 지정된 경로에서 원본파일을 가져옴 -> 에러처리 필요?
  final File sourceFile = File(source);

  // 원본파일을 읽어들여 변수에 저장
  String content = sourceFile.readAsStringSync();
  
  // 복사할 파일을 가져옴
  final File targetFile = File(target);

  // 복사할 파일에 원본 내용을 쓰기
  targetFile.writeAsStringSync(content);
}
