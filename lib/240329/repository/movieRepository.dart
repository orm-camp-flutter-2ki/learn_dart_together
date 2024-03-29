import 'package:learn_dart_together/240329/model/movie.dart';

abstract interface class MovieRepository {
  Future<List<Movie>> getMovieInfoList();
  Future<Movie> getMovie(int id);
}
