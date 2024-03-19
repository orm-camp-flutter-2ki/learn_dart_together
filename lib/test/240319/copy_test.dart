import 'dart:io';
import 'package:learn_dart_together/240319/copy.dart';
import 'package:test/test.dart';

void main() {
  test('copy Test', () {
    //파일 생성
    File book = File('book.txt');
    // 내용 추가
    book.writeAsStringSync('내용내용');
    // 파일 경로 복사
    Copy('book.txt', 'bookCopy.txt');
    // 파일에 복사한 파일 경로 저장
    final testCopyFile = File('bookCopy.txt');
    // 파일에 복사한 파일 내용 읽어서 내용  저장
    final contentCopy = testCopyFile.readAsStringSync();
    // 내용 확인
    expect(contentCopy, equals('내용내용'));
  });
}
