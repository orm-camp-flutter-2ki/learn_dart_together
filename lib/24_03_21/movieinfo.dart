import 'dart:convert';
import 'movie.dart';

Future<Movie> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));

  final String jsonString = '''{
      "title": "Star Wars",
      "director": "George Lucas",
      "year": 1977
  }''';

  Map<String, dynamic> filejson = jsonDecode(jsonString);
  Movie starWars = Movie.fromJson(filejson);

  return starWars;
}