import 'dart:io';

import 'package:learn_dart_together/0319/file.dart';
import 'package:test/test.dart';

void main() {
  String source = '/Users/leeseowoo/git/learn_dart_together/test/0319/01.txt';
  String target = '/Users/leeseowoo/git/learn_dart_together/test/0319/02.txt';

  // test('파일 내용 복사 실패', () {
  //   copy(source, target);   // 파일을 찾을 수 없습니다.
  //
  //   // 프로덕션 코드를 수정하지 않고 테스트할 수 있는 방법이 뭐가 있을까?
  // });

  test('파일 내용 복사 성공', () {
    File targetFile = File(target);
    expect(targetFile.readAsStringSync(), '');
    copy(source, target);
    expect(targetFile.readAsStringSync(), 'Hello Dart!');
  });
}