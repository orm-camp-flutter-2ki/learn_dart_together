import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/movie.dart';


class MovieApi {
  Future<Movie> getMovieDetail(int movieId) async {
    var url =
        'https://api.themoviedb.org/3/movie/${movieId}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';
    var response = await http.get(Uri.parse(url));

    final map = jsonDecode(utf8.decode(response.bodyBytes));
    return Movie.fromJson(map); // map을 Movie 형으로
  }
}
