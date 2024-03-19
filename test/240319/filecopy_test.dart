import 'dart:io';

import 'package:learn_dart_together/240319/filecopy.dart';
import 'package:test/test.dart';

void main() {
  test('fileTest', () {
    final testSourceFile = File('source.txt'); //
    testSourceFile.writeAsStringSync('테스트내용'); //source파일에 '테스트내용' 입력
    copy('source.txt', 'target.txt'); // 카피 메쏘드 만든거 써먹기
    final testCopyFile = File('target.txt'); //target파일을 테스트카피파일로 만들어
    final text = testCopyFile.readAsStringSync(); //테스트카피파일의 내용 읽어서 텍스트 만들기
    expect(text, equals('테스트내용')); //내용같으면 에러 안나, 에러없으면 복사 잘 된 거
  });
}
