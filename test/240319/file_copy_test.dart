import 'dart:io';

import 'package:learn_dart_together/240319/file_copy.dart';
import 'package:test/test.dart';


void main() {
  //매 테스트 시작시에 실행
  setUp(() {
    File('save.txt').writeAsStringSync('Hello World');
  });

  //매 테스트 종료시 실행
  tearDown(() {
    File('save.txt').deleteSync();
    File('save2.txt').deleteSync();
  });
  // test('copy 테스트', () => null)
  test('복제 테스트', () {
    copy('save.txt', 'save2.txt');

    expect(File('save2,txt').readAsStringSync(), 'Hello World');
  });
}