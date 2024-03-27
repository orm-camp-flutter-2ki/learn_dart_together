import 'dart:io';
import 'package:learn_dart_together/24_03_19/copy.dart';
import 'package:test/test.dart';

void main() {
  test('파일 복사 테스트', () {
    // 테스트용 파일 생성
    final sourceFile = File('report.txt');
    sourceFile.writeAsStringSync('오늘의 과제');

    // 파일 복사 실행
    copy('report.txt', 'target.txt');

    // 복사된 파일 내용 확인
    final targetFile = File('target.txt');
    final content = targetFile.readAsStringSync();

    expect(content, '오늘의 과제');
  });
}
