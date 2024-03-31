import '../model/movie.dart';

abstract class MovieRepository {
  Future<List<MovieInfo>> getMovieInfoList();
}
