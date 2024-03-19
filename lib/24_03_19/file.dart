import 'dart:io';

/// 파일을 복사하는 함수를 작성하시오.
/// 원본 파일 경로와 복사할 파일 경로는 프로그램 실행시 파라미터로 전달되는 것으로 하고, 버퍼링이나 에러 처리는 하지 않는다.

void main() {
  // 패키지 경로를 알고 싶다면 이렇게.
  // String currentPath = Directory.current.path;

  copy('lib/24_03_19/exception.dart', 'test/24_03_19/exception_test.dart');
}

void copy(String sourcePath, String targetPath) {
  File sourceFile = File(sourcePath);

  // 원본 파일에서 데이터 읽기
  List<int> bytes = sourceFile.readAsBytesSync();

  // sourceFile.openRead().pipe(streamConsumer); 이렇게 쓰시는 분도 있었따.

  // 대상 파일 열기 및 원본 파일에서 가져온 데이터 쓰기
  File destinationFile = File(targetPath);
  destinationFile.writeAsBytesSync(bytes);
}

// 비동기 방법. 아직 배우지 않았는데 그냥 써보았다.
Future<void> copy2(String sourcePath, String targetPath) async {
  File sourceFile = File(sourcePath);

  // 원본 파일에서 데이터 읽기
  List<int> bytes = await sourceFile.readAsBytes();

  // 대상 파일 열기 및 원본 파일에서 가져온 데이터 쓰기
  File destinationFile = File(targetPath);
  await destinationFile.writeAsBytes(bytes);
}
