import 'package:dart_cli_practice/240329/model/movie.dart';
import 'package:dart_cli_practice/240329/model/movie_detail.dart';

abstract interface class MovieRepository {
  Future<List<Movie>> getMovieInfoList();

  Future<MovieDetail> getMovieDetail(int id);
}
