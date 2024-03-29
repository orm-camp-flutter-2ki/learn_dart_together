import 'package:learn_dart_together/240329/model/movie_info/movie_info.dart';

abstract interface class MovieInfoRepository {
  Future<List<MovieInfo>> getMovieInfoList();
}
