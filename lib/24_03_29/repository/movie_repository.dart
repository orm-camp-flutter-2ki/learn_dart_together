import 'package:learn_dart_together/24_03_29/model/movie.dart';

abstract interface class MovieRepository {
  Future<List<Movie>> getMovieInfoList();
}