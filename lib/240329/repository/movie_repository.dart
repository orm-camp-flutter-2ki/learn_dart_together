

import 'package:learn_dart_together/240329/data_source/movie_api.dart';
import 'package:learn_dart_together/240329/model/movie_info.dart';

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMovieInfoList();
}

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;

  MovieRepositoryImpl({MovieApi? api}) : _api = api ?? MovieApi();

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    try {
      final movieInfoList = await _api.getMovieInfoList();

      return movieInfoList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}