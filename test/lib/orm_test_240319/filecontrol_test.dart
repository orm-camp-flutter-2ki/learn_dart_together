import 'dart:io';
import 'package:learn_dart_together/orm_240319/filecontrol.dart';
import 'package:test/test.dart';

void main() {
  test('fileTest', () {
    final testSourceFile = File('text.txt');
    testSourceFile.writeAsStringSync('테스트');
    copy('text.txt', 'testCopy.txt');

    final testCopyFile = File('testCopy.txt');
    final text = testCopyFile.readAsStringSync();
    expect(text, equals('테스트'));
  });
}
