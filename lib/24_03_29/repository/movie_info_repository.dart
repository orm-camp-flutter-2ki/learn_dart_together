import '../model/movie_info.dart';

abstract interface class MovieInfoRepository {
  Future<List<MovieInfo>> getMovieInfoList();
}
