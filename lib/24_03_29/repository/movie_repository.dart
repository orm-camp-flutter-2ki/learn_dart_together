import 'package:learn_dart_together/24_03_29/model/movie.dart';
import 'package:learn_dart_together/24_03_29/model/movie_detail.dart';

abstract interface class MovieRepository {
  Future<List<Movie>> getMovieInfoList();
  Future<MovieDetail> getMovieDetail(int id);
}