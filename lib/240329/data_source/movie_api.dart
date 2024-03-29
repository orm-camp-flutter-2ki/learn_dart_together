import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240329/model/movie_info.dart';

class MovieApi {
  final _baseUrl = 'https://api.themoviedb.org/3/movie';
  final _apiKey = 'a64533e7ece6c72731da47c9c8bc691f';
  final http.Client _client;

  MovieApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<MovieInfo>> getMovieInfoList() async {
    final response = await _client.get(Uri.parse('$_baseUrl/upcoming?api_key=$_apiKey&language=ko-KR&page=1'))
        .onError((error, stackTrace) => throw Exception('Error: $error'));

    final json = response.statusCode == 200
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('Error: statusCode:${response.statusCode}');

    final jsonList = json['results'] as List;

    return jsonList.map((e) => MovieInfo.fromJson(e)).toList();
  }
}