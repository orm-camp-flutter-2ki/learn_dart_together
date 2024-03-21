import 'package:learn_dart_together/24_03_19/-2/file_service.dart';

class AsyncPractice {
  final FileService _fileService = FileService();

  Future<void> fileHandler(String sourcePath, String targetPath) async {
    final sourceFile = await _fileService.asyncReadFile(sourcePath);
    final result = sourceFile.split('\n').map(_replaceName).join('\n');

    await _fileService.asyncWriteToFile(targetPath, result);
  }

  String _replaceName(String el) {
    return el.replaceAll('한석봉', '김석봉');
  }
}