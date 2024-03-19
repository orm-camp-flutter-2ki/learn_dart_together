import 'dart:io';

void main() {
  // String currentDirectory = Directory.current.path; // 현재 작성하고 있는 "이 파일"이 있는 위치
  // String filePath = '$currentDirectory/new.txt'; // ex) 현재 폴더 안에서 new.txt가 생겨날 위치
  // final file = File('new.txt'); // 파일을 생성한다
  // file.writeAsStringSync('내용 적어보기');

  String currentDirectory = Directory.current.path;

  String sourcePath = '$currentDirectory/source.dart';
  String targetPath = '$currentDirectory/target.dart';

  void copy(String source, String target) {
    File sourceFile = File(source); // 원본 열기

    File targetFile = File(target); // 타겟 생성

    // openRead() -> 파일을 읽기 위한 메서드, 반환값은 Sream<List<int>> ,
    // pipe() -> 두 개의 스트림을 연결하여 데이터를 전송 내 코드에서는 openRead로 읽은 스트림을 두 번째 스트림으로 전송
    // 공부가 필요한 메서드인 것 같습니다..
    sourceFile.openRead().pipe(targetFile.openWrite());

    print('🌟🧙 환영분신술로 복사완료!! 🧙🌟');
  }

  copy(sourcePath, targetPath); // 복사가 되는지 테스트
}