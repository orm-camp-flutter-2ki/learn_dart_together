import 'package:learn_dart_together/24_03_29/model/movie_detail.dart';

abstract interface class MovieDetailRepository {
  Future<MovieDetail> getMovieDetail(int id);
}
