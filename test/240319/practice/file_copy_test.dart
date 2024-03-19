import 'dart:io';

import 'package:dart_cli_practice/240319/practice/file_copy.dart';
import 'package:test/test.dart';

void main() {
  String? originalFilePath, copiedFilePath;

  setUp(() => {
        originalFilePath = "test/240319/practice/originalFile.txt",
        copiedFilePath = "test/240319/practice/copiedFile.txt",
      });

  tearDown(() {
    originalFilePath = copiedFilePath = null;
  });

  test('복사된 파일은 원본 파일과 내용이 동일하다.', () {
    copy(originalFilePath!, copiedFilePath!);

    File originalFile = File(originalFilePath!);
    File copiedFile = File(copiedFilePath!);

    expect(
        originalFile.readAsStringSync() == copiedFile.readAsStringSync(), true);
  });
}
