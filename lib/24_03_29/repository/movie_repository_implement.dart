import '../data_resource/movie_api.dart';
import '../dto/movie_dto.dart';
import '../mapper/movie_mapper.dart';
import '../model/movie.dart';

import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _movieApi = MovieApi();

  @override
  Future<List<MovieInfo>> getMovieInfoList() async {
    MovieDto movieDto = await _movieApi.receiveMovieData();
    return movieDto.toMovies();
  }
}
