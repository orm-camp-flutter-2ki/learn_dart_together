import 'dart:io';

class FileManager {
  void fileManipulate(String sourcePath, String targetPath) async {
    final sourceFile = File(sourcePath);
    final String futureStr = await sourceFile.readAsString();
    final targetFile = File(targetPath);

    futureStr.contains('한석봉') ? targetFile.writeAsString(futureStr.replaceAll('한석봉', '김석봉')) : print('한석봉은 없음');
  }
}
