import 'dart:io';

import 'package:learn_dart_together/240319/copy_file.dart';
import 'package:test/test.dart';

void main() {
  // 매 test 시작시 실행할 부분
  setUp(() {
    File('lib/240319/save.txt').writeAsStringSync('Hello World');
  });
  // 매 test 끝날 때 실행할 부분
  tearDown(() {
    File('lib/240319/save.txt').deleteSync();
    File('lib/240319/savecopy.txt').deleteSync();
    File('lib/240319/savecopy2.txt').deleteSync();
  });
  test('Copy File Test', () {
    copy('lib/240319/save.txt', 'lib/240319/savecopy.txt');
    copy('lib/240319/savecopy.txt', 'lib/240319/savecopy2.txt');

    File afile = File('lib/240319/save.txt');
    File bfile = File('lib/240319/savecopy2.txt');

    String a = afile.readAsStringSync();
    String b = bfile.readAsStringSync();
    print(a);
    print(b);

    expect(a, b);
  });
}
