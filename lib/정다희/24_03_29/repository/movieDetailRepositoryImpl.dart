import 'dart:convert';

import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/dto/MovieDetailDto.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/mapper/movie_detail_mapper.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/model/movieDetail.dart';

import '../data_source/movie_api.dart';
import 'package:http/http.dart' as http;

abstract interface class MovieDetailRepository {
  Future<MovieDetail> getMovieDetail(int id);
}

class MovieDetailRepositoryImpl implements MovieDetailRepository {
  final MovieApi _api;
  MovieDetailRepositoryImpl(this._api);

  @override
  Future<MovieDetail> getMovieDetail(int id) async {
    final res = await _api.getMovieDetail(id);
    return res.toMovieDetail();
  }
}
