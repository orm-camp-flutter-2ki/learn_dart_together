import 'dart:io';

import 'package:learn_dart_together/24_03_19/-2/file_service.dart';

class AsyncPractice {
  final FileService _fileService = FileService();

  // 과제1. 파일처리에 대한 비동기 처리
  Future<void> fileHandler(String sourcePath, String targetPath) async {
    try {
      final sourceFile = await _fileService.asyncReadFile(sourcePath);
      final result = sourceFile.split('\n').map(_replaceName).join('\n');

      await _fileService.asyncWriteToFile(targetPath, result);
    } on PathNotFoundException catch (e) {
      print('파일 경로를 찾을 수 없습니다. ${e.path}');
    }
  }

  String _replaceName(String el) {
    return el.replaceAll('한석봉', '김석봉');
  }
}
