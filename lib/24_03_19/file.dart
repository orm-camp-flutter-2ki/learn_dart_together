import 'dart:io';

/// 파일을 복사하는 함수를 작성하시오.
/// 원본 파일 경로와 복사할 파일 경로는 프로그램 실행시 파라미터로 전달되는 것으로 하고, 버퍼링이나 에러 처리는 하지 않는다.

void main() {
  copy('lib/24_03_19/exception.dart', 'test/24_03_19/exception_test.dart');
}

void copy(String sourcePath, String targetPath) {
  File sourceFile = File(sourcePath);

  // 원본 파일에서 데이터 읽기
  List<int> bytes = sourceFile.readAsBytesSync();

  // 대상 파일 열기 및 데이터 쓰기
  File destinationFile = File(targetPath);
  destinationFile.writeAsBytesSync(bytes);
}
