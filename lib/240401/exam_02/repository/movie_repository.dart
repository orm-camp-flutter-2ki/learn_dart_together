import '../model/movie_detail.dart';

abstract interface class MovieRepository {
  Future<MovieDetail> getMovieDetail(int id);
}
