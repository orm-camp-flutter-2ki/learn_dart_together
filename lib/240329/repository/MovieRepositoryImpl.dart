import 'package:learn_dart_together/240329/mapper/movie_mapper.dart';
import 'package:learn_dart_together/240329/model/movie_detail.dart';

import '../data_source/movie_api.dart';
import '../model/movie.dart';
import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api = MovieApi();

  // MovieRepositoryImpl(this._api);

  //PRACTICE 1.
  @override
  Future<List<Movie>> getMovieInfoList() async {
    final movieDtoList = await _api.getMovies();
    //e가 MovieDto임.
    final List<Movie> movieList = movieDtoList.map((e) => e.toMovie()).toList();

    return movieList;
  }

  //PRACTICE 2.
  @override
  Future<MovieDetail> getMovieDetail(int id) async {
    final movieDetailDtoMap = await _api.getMoviesDetailApi(id);
    return movieDetailDtoMap.toMovieDetail();
  }
}
