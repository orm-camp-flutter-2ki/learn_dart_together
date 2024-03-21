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
    File(path).deleteSync();
  }

  void writeToFile(String path, String content) {
    File(path).writeAsStringSync(content);
  }

  void asyncCopyFile(String sourcePath, String targetPath) async {
    final sourceFile = await asyncReadFile(sourcePath);
    final targetFile = File(targetPath);

    await targetFile.writeAsString(sourceFile);
  }

  Future<String> asyncReadFile(String path) async {
    final file = File(path);

    return await file.readAsString();
  }

  Future<void> asyncWriteToFile(String path, String content) async {
    await File(path).writeAsString(content);
  }
}
