import 'dart:convert';
import 'dart:io';

import 'movie.dart';

Future<Movie> getMovieInfo(String path) async {
  // TODO: 2초동안 기다리는 코드 작성
  await Future.delayed(Duration(seconds: 2));

  // 서버에서 데이터 fetch 받음
  // 랜덤 생성한 Mock 데이터 활용함 -> https://www.mockaroo.com/
  final String jsonString = await File(path).readAsString();
  
  // TODO: Movie 데이터 클래스를 리턴하도록 작성
  return Movie.fromJson(jsonDecode(jsonString));
}

