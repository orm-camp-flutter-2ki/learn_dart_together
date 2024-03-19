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

      print('파일이 복사되었습니다.');

    } on FileSystemException catch(error) {
      if( error.osError?.errorCode == 2 ) {
        print('파일 경로가 잘못 되었습니다. \n$error');
      } else {
        print('다른 예외: $error');
      }
    }

  }

  void deleteFile(String path) {
    File(path).deleteSync();
  }
}