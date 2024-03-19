import 'dart:io';

import 'package:learn_dart_together/240319/file_control.dart';
import 'package:test/test.dart';

void main() {
  test('File Control Test', () {
    final fileControl = FileControl();
    fileControl.copy('test/240319/test1.txt', 'test/240319/test2.txt');

    final test1 = File('test/240319/test1.txt');
    final test2 = File('test/240319/test2.txt');
    expect(test1.readAsStringSync() == test2.readAsStringSync(), true);
  });
}