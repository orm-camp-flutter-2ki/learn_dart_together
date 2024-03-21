import 'dart:io';
import 'package:test/test.dart';
import 'package:learn_dart_together/240321/file_processing.dart';

void main() {
  test('테스트', () async {
    // Given
    final sourcePath = 'lib/240321/sample.csv';
    final targetPath = 'lib/240321/sample_copy.csv';
    final sourceFile = File(sourcePath);
    final targetFile = File(targetPath);

    // When
    await modifyCsvFile();

    // Then
    expect(await targetFile.exists(), isTrue);

    final targetContents = await targetFile.readAsString();
    expect(targetContents.contains('한석봉'), isFalse);
    expect(targetContents.contains('김석봉'), isTrue);
  });
}
