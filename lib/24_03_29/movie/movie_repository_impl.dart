import 'dart:convert';

import 'package:learn_dart_together/24_03_29/movie/movie_repository.dart';
import 'package:learn_dart_together/24_03_29/movie/movie_info.dart';
import 'package:learn_dart_together/24_03_29/movie/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/movie/movie_mapper.dart';
import 'package:learn_dart_together/http/custom_http_client.dart';
import 'package:learn_dart_together/http/fake_http_service.dart';

import '../../http/url.dart';

class MovieRepositoryImpl implements MovieRepository {
  final CustomHttpClient _httpClient;

  MovieRepositoryImpl(this._httpClient);

  @override
  Future<List<MovieInfo>> getMovieInfoList({int? page}) async {
    List<MovieInfo> movieInfo = [];
    try {
      final response = await _httpClient.get(
          _httpClient is FakeHttpService ? movieUrl : '$movieUrl?page=$page');
      movieInfo = MovieInfoDto.fromJson(jsonDecode(response)).toMovies();
      return movieInfo;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
