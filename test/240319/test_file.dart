import 'dart:io';

import 'package:learn_dart_together/240319/file.dart';
import 'package:test/test.dart';

void main() {
  test('fileTest', () {
    final testSourceFile = File('text.txt');
    testSourceFile.writeAsStringSync('테스트내용입니다');
    copy('text.txt', 'testCopy.txt');
    final testCopyFile = File('testCopy.txt');
    final text = testCopyFile.readAsStringSync();
    expect(text, equals('테스트내용입니다'));
  });
}
