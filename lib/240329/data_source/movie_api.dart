import 'dart:convert';

import 'package:dart_cli_practice/240329/dto/movie_dto.dart';
import 'package:dart_cli_practice/240329/model/movie_detail.dart';
import 'package:http/http.dart' as http;

class MovieApi {
  final _baseUrl = 'https://api.themoviedb.org';

  // https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1
  Future<List<MovieDto>> getMovies() async {
    final http.Response response = await http.get(Uri.parse(
        '$_baseUrl/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    // Map<String, dynamic>
    final Map<String, dynamic> json = jsonDecode(response.body);

    // List<dynamic>
    // final resultsJson = json['results'] as List;
    final List resultsJson = json['results'];

    // 각각의 원소(e)를 MovieDto.fromJson(e) 로 MovieDto로 변환
    // List<MovieDto>
    final movieList = resultsJson.map((e) => MovieDto.fromJson(e)).toList();

    return movieList;
  }

  Future<MovieDetail> getMovieDetail(int movieId) async {
    final http.Response response = await http.get(Uri.parse(
        '$_baseUrl/3/movie/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    final movieDetail = MovieDetail.fromJson(json);

    return movieDetail;
  }
}
