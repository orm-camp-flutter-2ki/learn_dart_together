import 'dart:convert';
import 'package:http/http.dart' as http;
import 'movie.dart';
import 'movie_detail.dart';

class MovieApi {
  Future<List<Movie>> getMovieInfoList() async {
    final http.Response response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    List<dynamic> jsonList = jsonDecode(response.body)['results'];
    return jsonList.map((e) => Movie.fromJson(e)).toList();
  }

  Future<MovieDetail> getMovie(int id) async {
    final http.Response response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/${id}upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    final json = jsonDecode(response.body);
    return MovieDetail.fromJson(json);
  }
}
