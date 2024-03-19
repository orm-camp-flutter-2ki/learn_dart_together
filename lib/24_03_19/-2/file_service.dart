import 'dart:io';

class FileService {
  String readFile(String path) {
    final file = File(path);

    return file.readAsStringSync();
  }
}