import 'package:untitled2/240329/data_source/movie_api.dart';
import 'package:untitled2/240329/mapper/movie_mapper.dart';
import 'package:untitled2/240329/repository/movie_repository.dart';

import '../model/movie.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api = MovieApi();

  @override
  Future<List<Movie>> getMovieInfoList() async {

    final movieDtoList = await _api.getMovies();

    final List<Movie> movieList = movieDtoList.map((e) => e.toMovie()).toList();

    return movieList;
  }
}