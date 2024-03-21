import 'dart:io';

import 'package:learn_dart_together/240321/file_service.dart';
import 'package:test/test.dart';

void main() {
  final fileService = FileService();
  test('파일 복사 및 수정 테스트', () async {
    await fileService.replaceText(
        copyPath: 'test/240321/sample.csv',
        pastePath: 'test/240321/sample_copy.csv',
        targetText: '한석봉',
        changeText: '김석봉'
    );

    File sample = File('test/240321/sample.csv');
    File sampleCopy = File('test/240321/sample_copy.csv');
    String sampleText = sample.readAsStringSync();
    String sampleCopyText = sampleCopy.readAsStringSync();

    expect(sampleText.replaceAll('한석봉', '김석봉') == sampleCopyText, true);
  });
}