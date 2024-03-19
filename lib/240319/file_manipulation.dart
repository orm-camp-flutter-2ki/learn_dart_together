import 'dart:io';

class FileManipulation {
  void copy(String source, String target) {
    // sourceFile에서 내용 읽기
    final File sourceFile;
    final String text;

    try {
      sourceFile = File(source);
      text = sourceFile.readAsStringSync();

      // targetFile에 읽어온 내용 쓰기
      final File targetFile = File(target);
      targetFile.writeAsStringSync(text);
    } catch (e) {
      print(e);
      print('파일을 찾을 수 없습니다.');
    }
  }
}
