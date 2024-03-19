import 'dart:io';
import 'package:test/test.dart';


void main() {
  // 테스트 코드 시작
  test('파일 복사 테스트', () {
    String sourcePath = 'lib/24_03_19/source.dart';
    String targetPath = 'lib/24_03_19/target.dart';

    File sourceFile = File(sourcePath); // 원본 열기

    File targetFile = File(targetPath); // 타겟 생성

    void copy(String source, String target) {

      sourceFile.openRead().pipe(targetFile.openWrite());
    }

    copy(sourcePath, targetPath);

    expect(sourceFile, targetFile);
  });
}