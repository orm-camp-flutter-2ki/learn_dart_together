import 'dart:io';

import 'package:learn_dart_together/240321/file_manager.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    final sourcePath = 'lib/240321/sample.csv';
    File file = File(sourcePath);
    file.create();
    final String contents = '1, 홍길동, 30\n2, 한석봉, 20';
    file.writeAsString(contents);
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
    // When
    manager.fileManipulate(sourcePath, targetPath);

    // sample_copy.csv 생성 전에 readAsString()이 실행되는 경우가 있어서 delay추가
    await Future.delayed(Duration(seconds: 1));

    final String futureStr = await File('lib/240321/sample_copy.csv').readAsString();

    // Then
    expect(futureStr.contains('한석봉'), isFalse);
    expect(futureStr.contains('김석봉'), isTrue);
  });
}
