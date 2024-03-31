import 'dart:convert';

import 'package:http/http.dart' as http;

import '../03_model/movieSearch/movie_detail.dart';

class MovieDetailApi {
  final http.Client _client;

  MovieDetailApi({http.Client? client}) : _client = client ?? http.Client();

  Future<MovieDetail> getMovieDetail(int id) async {
    final response = await _client.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$id?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    if (response.statusCode == 200) {
      final json = jsonDecode(utf8.decode(response.bodyBytes));
      final result = MovieDetail.fromJson(json);
      // print(json);
      // print(result);
      return result;
    } else {
      throw Exception('실패');
    }
  }
}

// void main() {
//   MovieDetailApi().getMovieDetail(634492);
//   // print(results);
// }
