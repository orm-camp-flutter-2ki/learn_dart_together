import 'dart:convert';

import 'package:learn_dart_together/240321/movie.dart';

class MovieInfo {
  Future<Movie> getMovieInfo() async {
    // 2초동안 기다리는 코드 작성
    Future.delayed(Duration(seconds: 2));

    final String jsonString = '''{
      "title": "Star Wars",
      "director": "George Lucas",
      "year": 1977  
    }''';

    final json = jsonDecode(jsonString);
    Movie.fromJson(json);
    // Movie 데이터 클래스를 리턴하도록 작성
    return Movie.fromJson(json);
  }
}

void main() async {
  MovieInfo info = MovieInfo();
  // then()
  //String director = await info.getMovieInfo().then((value) => value.director);

  // 바로 String으로 못 받는지
  var movieInfo = await info.getMovieInfo();
  String director = movieInfo.director;

  print(director);
}
