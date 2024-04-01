import '../03_model/movieSearch/movie_detail.dart';

abstract interface class MovieDetailRepository {
  Future<MovieDetail> getMovieDetail(int id);
}
