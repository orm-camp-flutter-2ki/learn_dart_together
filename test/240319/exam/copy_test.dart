import 'dart:io';

import 'package:learn_dart_together/240319/exam/copy.dart';
import 'package:test/test.dart';

void main() {
  // 매 test 시작시 실행할 부분
  setUp(() {
    File('save.txt').writeAsStringSync('Hello World');
  });

  // 매 test 끝날때 실행할 부분
  tearDown(() {
    File('save.txt').deleteSync();
    File('save2.txt').deleteSync();

  });

  test('copy test', () {
    copy('save.txt', 'save2.txt');

    expect(File('save2.txt').readAsStringSync(), 'Hello World');
  });
}
