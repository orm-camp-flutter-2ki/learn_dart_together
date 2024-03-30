import 'package:learn_dart_together/240329/data_source/movie_api.dart';
import 'package:learn_dart_together/240329/model/movie.dart';
import 'package:learn_dart_together/240329/repository/movie_repository.dart';

import '../model/movie_info.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;

  MovieRepositoryImpl({MovieApi? api}) : _api = api ?? MovieApi();

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    final movies = await _api.getMovieInfoList();
    return movies;
  }

  @override
  Future<MovieInfo> getMovie(int id) async {
    final movie = await _api.getMovie(id);
    return movie;
  }
}
