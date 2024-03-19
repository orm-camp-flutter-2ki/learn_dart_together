import 'dart:io';

void copy(String source, String duplicate){ //source는 원본파일의 경로. duplicate는 복사할 파일의 경로
  File sourceFile = File(source);
  String content = sourceFile.readAsStringSync(); //파일 읽기

  File duplicateFile = File(duplicate);
  duplicateFile.writeAsStringSync(content); //읽은 콘텐츠를 writestringSync에 넣어 파일을 씀
}

void main (){
  final sourceFilePath = '/Users/jungeunhan/learn_dart_together/lib/240319/main.dart'; // 원본 파일 경로
  final duplicateFilePath = '/Users/jungeunhan/learn_dart_together/lib/240319/testCopy.dart'; // 복사본 파일 경로

  copy(sourceFilePath, duplicateFilePath);

  print("복사 완료");
}

// 파일을 복사하는 함수를 작성하시오
// 원본 파일 경로와 복사할 파일 경로는 프로그램 실행시 파라미터로 전달되는 것으로 하고, 버퍼링이나 에러 처리는 하지 않는다.