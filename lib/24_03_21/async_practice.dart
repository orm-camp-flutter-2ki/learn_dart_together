import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/24_03_19/-2/file_service.dart';
import 'package:learn_dart_together/24_03_21/movie.dart';

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

  // 과제2. 2초 딜레이 후 영화 정보에 역직렬화 후 반환하는 메소드
  Future<Movie> getMovieInfo(String json) async {
    await Future.delayed(Duration(seconds: 2));
    Movie movie = Movie.fromJson(jsonDecode(json) as Map<String, dynamic>);
    print(movie.director);

    return movie;
  }

  String _replaceName(String el) {
    return el.replaceAll('한석봉', '김석봉');
  }
}
