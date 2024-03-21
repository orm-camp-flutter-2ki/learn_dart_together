import 'dart:convert';

import 'movie.dart';

Future<Movie> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));

  final String jsonString = '''{
    "title": "Star Ward",
    "director": "George Lucas",
    "year": 1977
  }''';

  final Map<String, dynamic> json = jsonDecode(jsonString);
  final Movie movie = Movie.fromJson(json);

  return movie;
}

void main() async{
  final Movie movie = await getMovieInfo();
  print('영화 감독: ${movie.director}');
}