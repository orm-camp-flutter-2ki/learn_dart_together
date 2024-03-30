import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240329/model/movie.dart';

class MovieApi {
  Future<List<Movie>> getMovies() async {
    final http.Response response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse =
          jsonDecode(utf8.decode(response.bodyBytes));
      final List results = jsonResponse['results'];
      final List<Movie> movieList =
          results.map((json) => Movie.fromJson(json)).toList();
      return movieList;
    } else {
      throw Exception('에러 확인');
    }
  }

  Future<Movie> getMasks(int id) async {
    final http.Response response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$id?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    final Map<String, dynamic> json = (response.statusCode == 200)
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('에러 확인');
    return Movie.fromJson(json);
  }
}
