import 'dart:io';
import 'dart:math';

import 'package:test/test.dart';

import '../../240319/copy_file.dart';

void main() {
  test('Copy File Test', () {});
  copy('lib/240319/save.txt', 'lib/240319/savecopy.txt');
  copy('lib/240319/savecopy.txt', 'lib/240319/savecopy2.txt');

  final afile = File('lib/240319/save.txt');
  final bfile = File('lib/240319/savecopy2.txt');

  String afileText = afile.readAsStringSync();
  String bfileText = bfile.readAsStringSync();

  print(afileText);
  print(bfileText);

  expect(afileText, equals(bfileText)); // 값이 같은데 오류남
}
