import 'dart:io';

import 'package:learn_dart_together/0319/file_copy.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  /// 경로를 내가 지정해서 넣을 수 있다..!? 시도해보기

  test('파일 생성 및 내용 작성 잘 되는지 test', () {
    // 원본에 내용 쓰기
    final originFile = File('origin_test_file.txt');
    originFile.writeAsStringSync('Hello World!');
    originFile.writeAsStringSync('Hello Dart!'); // 새로 덮어 쓰는 것
  });

  // 원본 경로
  final originFile = File('origin_test_file.txt');
  // 카피 할 경로
  final fileCopyTest = File('copy_test_file.txt');

  test('내용 추가 잘 되는지 test', () {
    // 원본에 내용 추가
    originFile.writeAsStringSync('\nMy name is Yong.', mode: FileMode.append);
    originFile.writeAsStringSync('\nnice to meet you.', mode: FileMode.append);

    print(originFile.readAsStringSync());
  });

  test('카피가 잘 되는지 test', () {
    copyFile(originFile.path, fileCopyTest.path);

    expect(
        originFile.readAsStringSync() == fileCopyTest.readAsStringSync(), true);
    expect(originFile.readAsStringSync() != fileCopyTest.readAsStringSync(),
        false);
  });

  // 파일 지우기
  // originFile.delete();
  // fileCopyTest.delete();
}
