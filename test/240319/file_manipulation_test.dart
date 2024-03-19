import 'dart:io';

import 'package:learn_dart_together/240319/file_manipulation.dart';
import 'package:test/test.dart';

void main() {
  group('FileManipulation ', () {
    test('copy() 인자로 받은 경로의 파일 다른 인자의 파일의 경로로 복사한다. ', () {
      // Given
      final String sourcePath = 'lib/240319/save.txt';
      final String fakePath = 'lib/240319/save1.txt';
      final String targetPath = 'lib/240319/copiedFile.txt';

      final sourceFile = File(sourcePath);
      final fakeFile = File(fakePath);
      final String fakeText;
      final targetFile = File(targetPath);
      final String sourceText = sourceFile.readAsStringSync();
      final String targetText = targetFile.readAsStringSync();
      try {
        fakeText = fakeFile.readAsStringSync();
        // When
        bool result1 = sourceText == targetText;
        bool result2 = fakeText == targetText;
        // Then
        expect(result1, isTrue);
        // 에러발생
        expect(() => fakeFile.readAsStringSync(), throwsA(TypeMatcher<FileSystemException>()));
      } catch (e) {
        print(e);
      }
    });
  });
}
