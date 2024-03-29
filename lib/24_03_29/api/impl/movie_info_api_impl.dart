import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';
import 'package:learn_dart_together/24_03_29/api/interface/movie_info_api.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_response_dto.dart';

class MovieInfoApiImpl implements MovieInfoApi {
  static const _uri = 'https://api.themoviedb.org';
  static const _apiKey =
      'a64533e7ece6c72731da47c9c8bc691f'; // production에서는 보안상의 이유로 숨겨야 함
  final HttpProxy _http;

  MovieInfoApiImpl({required HttpProxy http}) : _http = http;

  @override
  Future<List<MovieInfoDto>> getMovieInfoList() async {
    final response = await _http.get(Uri.parse(
        '$_uri/3/movie/upcoming?api_key=$_apiKey&language=ko-KR&page=1'));
    return MovieInfoResponseDto.fromJson(
                jsonDecode(response.body) as Map<String, dynamic>)
            .results ??
        [];
  }
}
