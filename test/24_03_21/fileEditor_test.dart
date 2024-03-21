import 'dart:io';

import 'package:learn_dart_together/24_03_21/fileEditor.dart';
import 'package:test/test.dart';

void main() {
  test('fileEditor 테스트', () async {
    final origin = 'lib/24_03_21/sample.csv';
    final target = 'lib/24_03_21/sample_copy.csv';

    await fileEditor(origin, target);

    final targetFile = File(target);
    final modifiedLines = await targetFile.readAsLines();

    expect(modifiedLines[0], equals('1, 홍길동, 30'));
    expect(modifiedLines[1], equals('2, 한석봉, 20'));
  });
}