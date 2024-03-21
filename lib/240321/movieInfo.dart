import 'dart:convert';

import 'package:learn_dart_together/240321/movie.dart';

Future<Movie> getMovieInfo() async {
  // 2초 딜레이
  final delay = await Future.delayed(Duration(seconds: 2));

  //서버에서 들었오는 데이터라고 상상
  final String jsonString = '''{
      "title": "Star Wars",
      "director": "George Lucas",
      "year": 1977
}''';

  // json 형식을 객체로 변환(decoding)
  Map<String, dynamic> filejson = jsonDecode(jsonString);
  // 변환 된 값에서 director만 추출 후 출력
  //  Movie title = filejson['title'];
  //  Movie director = filejson['director'];
  //  Movie year = filejson['year'];
  Movie decodeMovie = Movie.fromJson(filejson);
  // Movie 객체 생성 및 반환
  return decodeMovie;
}
