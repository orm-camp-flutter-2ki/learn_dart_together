import 'dart:io';

import 'package:learn_dart_together/24_03_19/file.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {
    File('save.txt').writeAsStringSync('hello');
  });

  // 매 테스트 끝날 때 실행할 부분
  tearDown(() {
    File('save.txt').deleteSync();
  });
  test('copy test', () {
    // 매 테스트 시작시 실행할 부분

    copy('save.txt', 'save2.txt');

    expect(File('save2.txt').readAsStringSync(), 'hello');
  });
}
