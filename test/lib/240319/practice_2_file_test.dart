import 'dart:io';

import 'package:learn_dart_together/240319/practice_2_file.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('파일을 복사하는 함수를 작성하시오', () {
    CopyFile? copyFile;
    setUp(() => copyFile = CopyFile());

    test('정상 처리', () {

      // Given(준비)
      final originalPath = 'save.txt';
      final targetPath = 'lib/240319/copy.txt';
      final originFile = File(originalPath);
      final targetFile = File(targetPath);

      // When(실행)
      copyFile = CopyFile();
      copyFile!.copy(originalPath, targetPath);

      // Then(검증)
      final originText = originFile.readAsStringSync();
      final targetText = targetFile.readAsStringSync();
      expect(originText, targetText);

    });

    group('파일 경로가 잘못 되었을 경우', () {
      var originalPath;
      var targetPath;

      test('원본 파일 경로가 잘못 되었을 경우', () {
        // Given(준비)
        originalPath = 'save.txt.';
        targetPath = 'lib/240319/copy.txt';

        // When(실행)
        copyFile = CopyFile();
        copyFile!.copy(originalPath, targetPath);

        // Then(검증)
        // expect(copyFile!.copy(originalPath, targetPath), '파일 경로가 잘못 되었습니다.');
      });

      test('복사할 파일 경로가 잘못 되었을 경우', () {
        // Given(준비)
        originalPath = 'save.txt';
        targetPath = 'lib//240319/copy.txt';

      });
    });
  });
}