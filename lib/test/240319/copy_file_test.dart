import 'dart:io';

import 'package:learn_dart_together/240319/copy_file.dart';
import 'package:test/test.dart';

void main() {
  test('Copy File Test', () {});
  copy('lib/240319/save.txt', 'lib/240319/savecopy.txt');
  copy('lib/240319/savecopy.txt', 'lib/240319/savecopy2.txt');

  File afile = File('lib/240319/save.txt');
  File bfile = File('lib/240319/savecopy2.txt');

  print(afile.readAsStringSync());
  print(bfile.readAsStringSync());

  expect(afile.readAsStringSync(), bfile.readAsStringSync()); // 값이 같은데 오류남
}
