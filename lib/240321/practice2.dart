import 'dart:convert';

import 'movie.dart';

Future<Movie> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));

  final String jsonString = '''{
    "title": "Star Ward",
    "director": "George Licas",
    "year": 1977
  }''';
  Map<String,dynamic> map= jsonDecode(jsonString);
  return Movie.from(map);
}