import 'dart:convert';

import 'movie.dart';


Future<Movie> getMovieInfo(String data) async {
  // 2초 기다린다.
  await Future.delayed(Duration(seconds: 2));

  Map<String, dynamic> dataDecode = jsonDecode(data);

  String title = dataDecode['title'];
  String director = dataDecode['director'];
  int year = dataDecode['year'];

  return Movie(title, director, year);
}