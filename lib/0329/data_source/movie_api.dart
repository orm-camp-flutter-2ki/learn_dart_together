import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/movie_detail_dto.dart';
import '../dto/movie_dto.dart';

class MovieApi {

  final http.Client _client;

  MovieApi({http.Client? client}) : _client = client ?? http.Client();

  Future<MovieDto> getMovieDto() async {
    final http.Response response = await _client.get(Uri.parse('https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    Map<String, dynamic> decodedJson = response.statusCode == 200 ?
    jsonDecode(utf8.decode(response.bodyBytes)) :
    throw Exception('Request failed with status: ${response.statusCode}.');
    return MovieDto.fromJson(decodedJson);
  }

  Future<MovieDetailDto> getMovieDetailDto(int movieId) async {
    final http.Response response = await _client.get(Uri.parse('https://api.themoviedb.org/3/movie/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
    Map<String, dynamic> decodedJson = response.statusCode == 200 ?
    jsonDecode(utf8.decode(response.bodyBytes)) :
    throw Exception('Request failed with status: ${response.statusCode}.');
    return MovieDetailDto.fromJson(decodedJson);
  }
}