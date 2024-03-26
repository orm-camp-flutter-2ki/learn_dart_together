import 'dart:io';

import 'package:learn_dart_together/0319/file_copy.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  /// Directory 경로 변수: 너무 길어서 변수에 담았다.
  final String todayDirectory =
      '/Users/yong/Desktop/learn_dart_together/lib/0319';

  /// 원본 경로
  final originFile = File('$todayDirectory/origin_test_file.txt');

  /// 카피 할 경로
  final fileCopyTest = File('$todayDirectory/copy_test_file.txt');

  test('파일 생성 후 내용 작성 잘 되는지 test', () {
    /// 원본에 내용 쓰기
    originFile.writeAsStringSync('Hello World!');
    originFile.writeAsStringSync('Hello Dart!'); // 새로 덮어 쓰는 것
  });

  test('기존 파일 내용에 추가가 잘 되는지 test', () {
    /// 원본에 내용 추가
    originFile.writeAsStringSync('\nMy name is Yong.', mode: FileMode.append);
    originFile.writeAsStringSync('\nnice to meet you.', mode: FileMode.append);

    print(originFile.readAsStringSync());
  });

  test('카피가 잘 되는지 test', () {
    /// copyFile 메서드 실행
    copyFile(originFile.path, fileCopyTest.path);

    expect(
        originFile.readAsStringSync() == fileCopyTest.readAsStringSync(), true);
    expect(originFile.readAsStringSync() != fileCopyTest.readAsStringSync(),
        false);
  });

  test('파일 지우기 test', () {
    /// 파일 지우기
    originFile.delete();
    fileCopyTest.delete();
  });

  final String todayDirectory2 =
      '/Users/yong/Desktop/learn_dart_together/test/0319'; // 오늘 derectory 경로

  /// 매 test 시작 마다
  setUp(() {
    File('$todayDirectory/company2_test.txt').writeAsStringSync('hello dart');
  });

  /// 매 test 끝 마다
  tearDown(() {
    File('$todayDirectory/company2_test.txt').deleteSync();
    File('$todayDirectory/company2_test2.txt').deleteSync();
  });
  test('description', () {});
}
