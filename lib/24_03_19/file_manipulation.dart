import 'dart:io';

void main() {
  //
  // String currentDirectory = Directory.current.path; // 현재 작성하고 있는 "이 파일"이 있는 위치
  //
  // String filePath = '$currentDirectory/new.txt'; // ex) 현재 폴더 안에서 new.txt가 생겨날 위치
  //
  // final file = File('new.txt'); // 파일을 생성한다
  //
  // file.writeAsStringSync('내용 적어보기');

  String currentDirectory = Directory.current.path;

  String sourcePath = '$currentDirectory/source.dart';
  String targetPath = '$currentDirectory/target.dart';

  void copy(String source, String target) {
    File sourceFile = File(source); // 원본 열기

    File targetFile = File(target); // 타겟 생성

    sourceFile.openRead().pipe(targetFile.openWrite());

    print('🌟 환영분신술로 복사완료');
  }

  copy(sourcePath, targetPath); // 복사되는지 테스트
}