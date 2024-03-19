import 'dart:io';

class CopyFile {

  void copy(String source, String target) {
    // 원본 파일 경로
    final originalFile = File(source);
    // 복사할 파일 경로
    final targetFile = File(target);

    try {
      final copyFile = originalFile.readAsStringSync();
      targetFile.writeAsStringSync(copyFile);
      final text = targetFile.readAsStringSync();

      print('파일이 복사되었습니다.');
      print('[내용]\n$text');

    } on PathNotFoundException catch(error) {
      print('파일 경로가 잘못 되었습니다.');
    }

  }
}

void main() {
  CopyFile aa = CopyFile();
  aa.copy('save.txt', 'lib/240319/copy.txt');
}