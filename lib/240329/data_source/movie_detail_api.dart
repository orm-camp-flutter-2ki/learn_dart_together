import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240329/model/movie/movie.dart';

class MovieDetailApi {
  final http.Client _client;
  final int movieId;
  MovieDetailApi(this.movieId, {http.Client? client}) : _client = client ?? http.Client();

  Future<Movie> getMovieDetail() async {
    final response = await _client
        .get(Uri.parse('https://api.themoviedb.org/3/movie/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'))
        .onError((error, stackTrace) => throw Exception('Error:$error'));
    final json = response.statusCode == 200 ? jsonDecode(utf8.decode(response.bodyBytes)) : throw Exception('statusCode:${response.statusCode}');

    // List 중요함*********************
    //final List results = jsonList['results'];
    // 자동완성을 안하고, 복붙하면 문제될 수

    final movies = Movie.fromJson(json);
    return movies;
  }
}
