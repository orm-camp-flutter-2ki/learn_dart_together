import 'dart:io';

import 'package:learn_dart_together/24_03_19/file_manipulation/file_manipulation.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('copy 함수 테스트', () {
    // given
    final originTxt = File('originTxt.txt');
    final copyTxt = File('copyTxt.txt');

    originTxt.writeAsStringSync('Hello, World!');

    // when
    copy(originTxt.path, copyTxt.path);

    // then

    expect(originTxt.readAsStringSync() == copyTxt.readAsStringSync(), true);
  });
}
