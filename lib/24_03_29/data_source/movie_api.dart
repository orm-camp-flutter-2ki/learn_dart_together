import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_29/model/movie_detail/movie.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';

class MovieApi {
  final http.Client _client;
  final String _url =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';

  MovieApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<MovieInfo>> getMovieInfo() async {
    final response = await _client.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body);
      final List results = jsonList[
          'results']; // 변수 타입에 List 만 했더니 List<dynamic> 이라서 리턴을 못한다. 그래서 정확히 List<MovieInfo> 라고 지정했다. 근데 없으면 알아서 타입 추론하더라.
      final movieInfoList = results.map((e) => MovieInfo.fromJson(e)).toList();
      return movieInfoList;
    } else {
      throw Exception('응답없음');
    }
  }

  Future<Movie> getMovie(int id) async {
    final response = await _client.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$id?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(utf8.decode(response.bodyBytes));
      print(jsonList);
      return Movie.fromJson(jsonList);
    } else {
      throw Exception('응답없음');
    }
  }
}
