import 'package:learn_dart_together/24_03_29/dto/movie_dto.dart';
import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';

abstract interface class MovieApi {
  Future<List<MovieInfoDto>> getMovieInfoList();

  Future<MovieDto> getMovie(int id);
}
