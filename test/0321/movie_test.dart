import 'dart:async';
import 'dart:convert';

import 'package:learn_dart_together/0321/movie.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

Future<void> main() async {
  final movieInfo = await getMovieInfo();
  print(movieInfo.director);

  test('description', () async {
    expect(movieInfo.director == '딘 데블로이스', true);
  });
}

Future<Movie> getMovieInfo() async {
  final stopWatch = Stopwatch()..start();
  await Future.delayed(Duration(seconds: 2)); // 2초동안 기다리는 코드
  print(stopWatch.elapsed.inSeconds);

  // 외부에서 들어온 json 형태의 String 데이터라고 가정
  final Movie movieData =
      Movie(title: '드래곤 길들이기 3', director: '딘 데블로이스', year: 2019);
  final String jsonString = jsonEncode(movieData); // json 형태의 String

  // jsonDecode
  final Map<String, dynamic> jsonData = await jsonDecode(jsonString);
  return Movie.fromJson(jsonData);
}

/// 내가 커피 사고 진동벨 받앗다. 진동벨 울리기 전에 내가 급하게 그냥 갓다...
