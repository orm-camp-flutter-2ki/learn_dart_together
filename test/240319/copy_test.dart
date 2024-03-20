import 'dart:io';
import 'package:test/test.dart';
import 'package:learn_dart_together/240319/copy.dart';

void main() {
  test('파일 복사 테스트', () {
    // given
    final sourcePath = 'lib/240319/source.txt';
    final targetPath = 'lib/240319/target.txt';

    // when
    copy(sourcePath, targetPath);

    // test(대상 파일이 생성되었는지 확인)
    final targetFile = File(targetPath);
    expect(targetFile.existsSync(), isTrue);

    // test(소스 파일과 대상 파일의 내용이 같은지 확인)
    final sourceContent = File(sourcePath).readAsStringSync();
    final targetContent = targetFile.readAsStringSync();
    expect(targetContent, equals(sourceContent));
  });
}
