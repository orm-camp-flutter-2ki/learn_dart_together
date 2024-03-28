import 'dart:io';

import 'package:learn_dart_together/24_03_19/02_file.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void copy(String source, String target) {
  final fileSource = File(source);

  final contents = fileSource.readAsStringSync();

  final fileTarget = File(target);
  fileTarget.writeAsStringSync(contents);
}

void main() {
  test('원본파일과 복사본파일 내용 같은지 체크', () {
    copy('lib/24_03_19/save.txt', 'lib/24_03_19/save1.txt');
    final fileSource = File('lib/24_03_19/save.txt');

    final contents = fileSource.readAsStringSync();

    final fileTarget = File('lib/24_03_19/save1.txt');
    fileTarget.writeAsStringSync(contents);
    //given
    final original = fileSource.readAsStringSync();

    //when
    final copycat = fileTarget.readAsStringSync();

    //then
    expect(original == copycat, true);

  });
}