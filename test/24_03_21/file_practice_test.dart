import 'dart:io';

import 'package:learn_dart_together/24_03_21/file_practice.dart';
import 'package:test/test.dart';

void main() {
  group('파일 조작', () {
    test('파일을 읽고 한석봉을 김석봉으로 바꾼 내용이 들어간 파일을 만든다.', () async {
      await copyAndEditFile(
          originPath: 'test/24_03_21/', copyPath: 'test/24_03_21/');
      final String copyString =
          await File('test/24_03_21/sample_copy.csv').readAsString();
      expect(copyString.trim().contains('김석봉'), true);
    });
  });
}
