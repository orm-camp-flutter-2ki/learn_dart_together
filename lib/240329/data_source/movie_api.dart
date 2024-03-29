import 'dart:convert';

import '../model/movie.dart';
import 'package:http/http.dart' as http;

import '../model/movie_info.dart';

class MovieApi {
  static const String baseUrl = 'https://api.themoviedb.org/3/movie';

  Future<List<MovieInfo>> getMovieInfoList() async {
    final response = await http.get(Uri.parse(
        '$baseUrl/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final jsonList = data['results'] as List;
      final movies = jsonList.map((e) => MovieInfo.fromJson(e)).toList();

      return movies;
    } else {
      throw Exception('Movie ERROR: HTTP Status Code ${response.statusCode}');
    }
  }

  Future<MovieInfo> getMovie(int id) async {
    final response = await http.get(Uri.parse(
        '$baseUrl/$id?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      final movie = MovieInfo.fromJson(json);

      return movie;
    } else {
      throw Exception('Movie ERROR: HTTP Status Code ${response.statusCode}');
    }
  }
}
