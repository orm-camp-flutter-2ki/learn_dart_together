import 'package:learn_dart_together/24_03_29/movie/movie_info.dart';

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMovieInfoList({int? page});
}
