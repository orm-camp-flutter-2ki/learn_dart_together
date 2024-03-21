import 'dart:io';

import 'package:learn_dart_together/240321/file_manager.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    File('lib/240321/sample.csv').create();
  });

  tearDown(() {
    File('lib/240321/sample.csv').delete();
    File('lib/240321/sample_copy.csv').delete();
  });

  test('target file의 한석봉을 김석봉으로 바꾼다', () async {
    // Given
    final String sourcePath = 'lib/240321/sample.csv';
    final String targetPath = 'lib/240321/sample_copy.csv';
    final manager = FileManager();
    final String futureStr = await File('lib/240321/sample_copy.csv').readAsString();
    // When
    manager.fileManipulate(sourcePath, targetPath);

    // Then
    expect(futureStr.contains('한석봉'), isFalse);
    expect(futureStr.contains('김석봉'), isTrue);
  });
}
