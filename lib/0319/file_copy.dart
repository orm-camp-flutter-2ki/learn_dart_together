import 'dart:io'; // html말고 io로 import 하는 것이 좋다.

void copyFile(String sourcePath, String targetPath) {
  /// 원본 파일 경로
  final getSource = File(sourcePath);

  /// 내용 읽고 변수에 담음
  final readSource = getSource.readAsStringSync();

  /// 복사할 파일 경로
  final fileWithCopy = File(targetPath);

  /// 내용 쓰기
  fileWithCopy.writeAsStringSync(readSource);
}

/*
* 파일을 복사하는 함수를 작성
* : 원본파일 경로와 복사할 파일 경로는 프로그램 실행 시 파라미터로 전달된다.
* : 버퍼링이나 에러처리는 하지 않는다.
* : 내부에서 .path를 하는게 에러가 덜 나나? 라는 생각도 했는데 <- 이건 뭔가 잘못된 접근같았다...
* */
