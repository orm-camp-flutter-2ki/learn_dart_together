import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240329/model/movie_info.dart';

class MovieApi {
  final http.Client _client;
  final baseUrl = 'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&';
  MovieApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<MovieInfo>> getMovieInfoList() async {
    final response = await _client.get(Uri.parse('$baseUrl/page=1')).onError((error, stackTrace) => throw Exception('Error:$error'));
    final jsonList = response.statusCode == 200 ? jsonDecode(utf8.decode(response.bodyBytes)) : throw Exception('statusCode:${response.statusCode}');

    // List 중요함*********************
    final List results = jsonList['results'];
    // 자동완성을 안하고, 복붙하면 문제될 수
    final movies = results.map((e) => MovieInfo.fromJson(e as Map<String, dynamic>)).toList();
    return movies;
  }
}

void main(List<String> args) async {
  final jsonList = await MovieApi().getMovieInfoList();
  print(jsonList);
}
