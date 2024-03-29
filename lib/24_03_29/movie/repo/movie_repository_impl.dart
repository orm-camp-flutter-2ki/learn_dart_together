import 'dart:convert';

import 'package:learn_dart_together/24_03_29/movie/dto/movie_dto.dart';
import 'package:learn_dart_together/24_03_29/movie/repo/movie_repository.dart';
import 'package:learn_dart_together/24_03_29/movie/model/movie_info.dart';
import 'package:learn_dart_together/24_03_29/movie/dto/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/movie/mapper/movie_mapper.dart';
import 'package:learn_dart_together/http/custom_http_client.dart';
import 'package:learn_dart_together/http/fake_http_service.dart';

import '../../../http/url.dart';
import '../model/movie.dart';

class MovieRepositoryImpl implements MovieRepository {
  final CustomHttpClient _httpClient;

  MovieRepositoryImpl(this._httpClient);

  @override
  Future<List<MovieInfo>> getMovieInfoList({int? page}) async {
    List<MovieInfo> movieInfo = [];
    try {
      final response = await _httpClient.get(_httpClient is FakeHttpService
          ? movieListUrl
          : '$movieListUrl?page=$page');
      movieInfo = MovieInfoDto.fromJson(jsonDecode(response)).toMovies();
      return movieInfo;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Movie> getMovieInfo({required num id}) async {
    try {
      final response = await _httpClient.get(_httpClient is FakeHttpService
          ? fakeMovieInfoUrl
          : '$movieBaseUrl/$id?$movieQueryParam');

     Movie movie = MovieDto.fromJson(jsonDecode(response)).toMovie();
      return movie;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
