import 'package:learn_dart_together/240329/model/movie_info.dart';

abstract interface class MovieRepository {
  Future<List<MovieInfo>> getMovieInfoList();
}
