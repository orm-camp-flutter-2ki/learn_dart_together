import 'dart:io';

class FileService {
  String readFile(String path) {
    final file = File(path);

    return file.readAsStringSync();
  }

  void copyFile(String sourcePath, String targetPath) {
    final sourceFile = readFile(sourcePath);
    final targetFile = File(targetPath);

    targetFile.writeAsStringSync(sourceFile);
  }

  void deleteFile(String path) {
    final file = File(path);
    file.deleteSync();
  }
}
