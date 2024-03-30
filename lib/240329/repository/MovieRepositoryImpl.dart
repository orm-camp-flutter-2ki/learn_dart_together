import '../data_source/movie_api.dart';
import '../model/movie.dart';
import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;

  MovieRepositoryImpl(this._api);

  @override
  Future<List<Movie>> getMovieInfoList() async {
    final movieDtoList = await _api.getMovies();
    //e가 MovieDto임.
    final List<Movie> movieList = movieDtoList.map((e) => e.toMovie()).toList();

    return movieList;
  }
}
