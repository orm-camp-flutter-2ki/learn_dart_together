import 'dart:io';

class FileService {
  String _readFile(String path) {
    final file = File(path);

    return file.readAsStringSync();
  }

  void copyFile(String sourcePath, String targetPath) {
    final sourceFile = _readFile(sourcePath);
    final targetFile = File(targetPath);

    targetFile.writeAsStringSync(sourceFile);
  }
}