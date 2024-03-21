import 'dart:io';

class FileService {
  void replaceText ({
    required String copyPath,
    required String pastePath,
    required String targetText,
    required String changeText
  }) async {
    final copyFile = File(copyPath);
    final pasteFile = File(pastePath);
    await pasteFile
        .writeAsString(copyFile.readAsStringSync().replaceAll(targetText, changeText));
  }
}