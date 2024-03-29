import 'package:learn_dart_together/0329/model/movie_info.dart';

import '../model/movie_detail.dart';

abstract interface class MovieRepository {

  Future<List<MovieInfo>> getMovieInfoList();
  Future<MovieDetail> getMovieDetail(int movieId);
}