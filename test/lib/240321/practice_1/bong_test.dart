import 'dart:io';

import 'package:learn_dart_together/240321/practice_1/bong.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('파일 처리, ', () {
    final originalFile = File('assets/data/sample.csv');
    final fakeFile = File('assets/data/fakeSample.csv');
    final newPath = File('assets/data/sample_copy.csv');

    FileHandle fileHandle;

    test('"한석봉"이라는 문자열이 있다면, '
        'sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오. ', () async {
      // Given
      fileHandle = FileHandle(originalFile: originalFile, newPath: newPath);

      // When
      String result = await fileHandle.findAndChangeName();

      String expectedResult = '이름이 변경되었습니다.';

      // Then
      expect(result, expectedResult);
    });

    test('"한석봉"이라는 문자열이 없는 경우, ', () async {
      // Given
      fileHandle = FileHandle(originalFile: fakeFile, newPath: newPath);

      // When
      String result = await fileHandle.findAndChangeName();

      String expectedResult = '수정할 이름이 없습니다.';

      // Then
      expect(result, expectedResult);
    });
  });
}
