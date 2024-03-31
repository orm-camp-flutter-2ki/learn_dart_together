import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/orm_240329/03_model/movie_info.dart';

class MovieApi {
  final http.Client _client;
  final urlBase =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';

  MovieApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<MovieInfo>> getMovieList() async {
    final response = await _client.get(Uri.parse(urlBase));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(utf8.decode(response.bodyBytes));
      final results = (jsonList['results'] as List<dynamic>)
          .map((e) => MovieInfo.fromJson(e))
          .toList();
      // print(results);
      return results;
    } else {
      throw Exception('실패');
    }
  }
}

// void main() {
//   MovieApi().getMovieList();
// }
