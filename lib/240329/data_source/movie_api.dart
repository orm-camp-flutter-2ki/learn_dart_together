import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240328/model/store.dart';
import 'package:learn_dart_together/240329/dto/movie_dto.dart';

class MovieApi {
  final http.Client _client;

  MovieApi({http.Client? client}) : _client = client ?? http.Client();

  Future<MovieDto> getMovies() async {
    final response = await _client.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    final jsonMap = response.statusCode != 200
        ? throw Exception("오류남")
        : jsonDecode(utf8.decode(response.bodyBytes));

    //final jsonList = jsonMap['stores'] as List;
    return MovieDto.fromJson(jsonMap);
  }

  Future<Results> getMovie(int movieId) async {
    final response = await _client.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/${movieId}?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    final Map<String, dynamic> json = response.statusCode != 200
        ? throw Exception("오류남")
        : jsonDecode(utf8.decode(response.bodyBytes));

    //final jsonList = jsonMap['stores'] as List;
    return Results.fromJson(json);
  }
}
