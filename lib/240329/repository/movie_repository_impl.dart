import 'package:dart_cli_practice/240329/data_source/movie_api.dart';
import 'package:dart_cli_practice/240329/mapper/movie_mapper.dart';
import 'package:dart_cli_practice/240329/model/movie.dart';
import 'package:dart_cli_practice/240329/model/movie_detail.dart';
import 'package:dart_cli_practice/240329/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api = MovieApi();

  @override
  Future<List<Movie>> getMovieInfoList() async {
    // Movie 리스트를 가져와야함
    final movieDtoList = await _api.getMovies();

    // e = MovieDto
    // e.toMovie() = Movie
    final List<Movie> movieList = movieDtoList.map((e) => e.toMovie()).toList();

    return movieList;
  }

  @override
  Future<MovieDetail> getMovieDetail(int id) async {
    return await _api.getMovieDetail(id);
  }
}
