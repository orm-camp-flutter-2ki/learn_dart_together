import 'package:learn_dart_together/24_03_29/model/movie_detail.dart';
import 'package:learn_dart_together/24_03_29/model/movie_info.dart';

abstract interface class MovieInfoRepository {
  Future<List<MovieInfo>> getMovieInfoList();

  Future<MovieDetail> getMovieDetail(int movieId);
}
