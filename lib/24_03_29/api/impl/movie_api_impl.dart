import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';
import 'package:learn_dart_together/24_03_29/api/interface/movie_api.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';

class MovieApiImpl implements MovieApi {
  static const _uri = 'https://api.themoviedb.org';
  static const _apiKey =
      'a64533e7ece6c72731da47c9c8bc691f'; // production에서는 보안상의 이유로 숨겨야 함
  final HttpProxy _http;

  MovieApiImpl({required HttpProxy http}) : _http = http;

  @override
  Future<List<MovieInfoDto>> getMovieInfoList() async {
    final response = await _http.get(Uri.parse(
        '$_uri/3/movie/upcoming?api_key=$_apiKey&language=ko-KR&page=1'));
    return (jsonDecode(response.body) as List)
        .map((e) => MovieInfoDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<MovieDto> getMovie(int id) async {
    final response = await _http.get(
        Uri.parse('$_uri/3/movie/$id?api_key=$_apiKey&language=ko-KR&page=1'));
    return MovieDto.fromJson(jsonDecode(response.body));
  }
}
