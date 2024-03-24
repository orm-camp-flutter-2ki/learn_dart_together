import 'dart:io';

import 'package:learn_dart_together/240321/file_manager.dart';
import 'package:test/test.dart';

void main() {
  setUp(() async {
    final sourcePath = 'lib/240321/sample.csv';
    File file = File(sourcePath);
    await file.create();
    final String contents = '1, 홍길동, 30\n2, 한석봉, 20';
    await file.writeAsString(contents);
  });

  tearDown(() async {
    await File('lib/240321/sample.csv').delete().then((_) => print('file1 deleted'));
    await File('lib/240321/sample_copy.csv').delete().then((_) => print('file2 deleted'));
  });

  test('target file의 한석봉을 김석봉으로 바꾼다', () async {
    // Given
    final String sourcePath = 'lib/240321/sample.csv';
    final String targetPath = 'lib/240321/sample_copy.csv';
    final manager = FileManager();
    // When
    manager.fileManipulate(sourcePath, targetPath);

    final String futureStr = await File('lib/240321/sample_copy.csv').readAsString();

    // Then
    expect(futureStr.contains('한석봉'), isFalse);
    expect(futureStr.contains('김석봉'), isTrue);
  });
}
