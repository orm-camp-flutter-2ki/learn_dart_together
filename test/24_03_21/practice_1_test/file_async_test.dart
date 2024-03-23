import 'dart:io';

import 'package:learn_dart_together/24_03_21/practice_1/file_async.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('file read ,find string and copy', () {
    // given when
    copyModify('test/24_03_21/practice_1_test/sample.csv');

    final copy = File('test/24_03_21/practice_1_test/sample_copy.csv').readAsStringSync();
    final expected =
        File('test/24_03_21/practice_1_test/expect_modified.csv').readAsStringSync();

    // then
    expect(copy == expected, true);
  });
}
