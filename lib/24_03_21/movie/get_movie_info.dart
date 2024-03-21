import 'dart:convert';

import 'package:learn_dart_together/24_03_21/movie/movie.dart';

Future<Movie> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));

  final String jsonString = '''{
    "title": "Star ward",
    "director": "George Lucas",
    "year": 1977
  }''';

  final Map<String, dynamic> json = jsonDecode(jsonString);

  return Movie.fromJson(json);
}
