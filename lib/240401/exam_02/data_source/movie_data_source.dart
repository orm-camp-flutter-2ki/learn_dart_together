import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/movie_detail_dto.dart';

class MovieDataSource {
  final http.Client _client;

  final _baseUrl = 'https://api.themoviedb.org/3/';

  MovieDataSource({http.Client? client}) : _client = client ?? http.Client();

  Future<MovieDetailDto> getMovieDetailDto(int id) async {
    final http.Response response = await _client.get(Uri.parse(
        '$_baseUrl/movie/$id?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    return MovieDetailDto.fromJson(jsonDecode(response.body));
  }
}
