import 'package:learn_dart_together/240329/model/movie/movie.dart';

abstract interface class MovieRepository {
  Future<Movie> getMovieDetail();
}
