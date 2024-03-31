
import 'package:learn_dart_together/24_03_29/movie/mapper/movie_mapper.dart';

import '../data_source/movie_api.dart';
import '../dto/movie_dto.dart';
import '../model/movie.dart';
import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _client;

  MovieRepositoryImpl({MovieApi? client}) : _client = client ?? MovieApi();

  @override
  Future<Movie> getMovie(int id) async {
    Results results;
    Movie movie;
    try {
      results = await _client.getMovie(id);
      movie = results.toMovie();
    } catch (e) {
      movie = Movie(
          id: 0,
          originalTitle: '',
          overview: '',
          title: '',
          voteAverage: 0.0,
          releaseDate: DateTime(0, 0, 0, 0, 0, 0));
    }

    return movie;
  }

  @override
  Future<List<Movie>> getMovieInfoList() async {
    MovieDto movieDtos;
    List<Movie> movieList;
    try {
      movieDtos = await _client.getMovies();
      movieList = movieDtos.results!.map((e) => e.toMovie()).toList();
    } catch (e) {
      movieList = [];
    }
    return movieList;
  }
}