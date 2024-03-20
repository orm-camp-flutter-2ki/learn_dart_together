import 'dart:io';
import 'package:learn_dart_together/24_03_19/filecopy.dart';
import 'package:test/test.dart';

void main() {
  test('file copy 테스트 시작', () {
    String currentDirectory = Directory.current.path; // 현재 이 파일이 있는 path
    final originFilePath = File('$currentDirectory/source.dart').path;
    final targetFilePath = File('$currentDirectory/target.dart').path;

    final sourceFile = File(originFilePath);
    sourceFile.writeAsStringSync('테스트내용입니다');
    copy(originFilePath,targetFilePath);
    final testCopyFile = File(targetFilePath);
    final text = testCopyFile.readAsStringSync();
    expect(text , equals('테스트내용입니다'));
  });
}