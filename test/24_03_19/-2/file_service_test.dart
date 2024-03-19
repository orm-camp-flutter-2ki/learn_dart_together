import 'package:learn_dart_together/24_03_19/-2/file_service.dart';
import 'package:test/test.dart';

void main() {
  const String sourcePath = 'test/24_03_19/-2/resource/hello.txt';
  const String targetPath = 'test/24_03_19/-2/resource/copyHello.txt';

  group('FileService 클래스', () {
    FileService? fileService;
    setUp(() => fileService = FileService());
    tearDown(() {
      fileService!.deleteFile(targetPath);
      fileService = null;
    });
    group('copyFile 메소드는', () {
      test('기존의 파일을 읽어 새로운 파일로 카피해서 생성한다.', () {
        // When
        fileService!.copyFile(sourcePath, targetPath);

        // Then
        expect(fileService!.readFile(sourcePath), fileService!.readFile(targetPath));
      });
    });
  });
}
