import 'package:learn_dart_together/24_03_29/movie/model/movie_info.dart';

import '../model/movie.dart';

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMovieInfoList({int? page});

  Future<Movie> getMovieInfo({required num id});
}
